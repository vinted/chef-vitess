cell = 'zone1'
topo_cell_root = "/vitess/#{cell}"
topo_implementation = node['vitess']['topo_implementation']
topo_global_server_address = node['vitess']['topo_global_server_address']
topo_global_root = node['vitess']['topo_global_root']
topo_cell_server_address = node['vitess']['topo_global_server_address']
init_keyspace = 'commerce'

# Assuming MySQL and Zookeeper or etcd is available

vtctl_artifact 'AddCellInfo' do
  command %W[
    -alsologtostderr=1
    -topo_implementation #{topo_implementation}
    -topo_global_server_address #{topo_global_server_address}
    -topo_global_root #{topo_global_root}
    AddCellInfo -root #{topo_cell_root} -server_address #{topo_cell_server_address} #{cell}
  ].join(' ')
end

vtctld = node['vitess']['vtctld'].dup
vtctld['cell'] = cell
vtctld['service_map'] = 'grpc-vtctl'
vtctld['workflow_manager_init'] = 1
vtctld['workflow_manager_use_election'] = 1

vtctld_service 'default instance' do
  args vtctld
end

uids = [30000, 31000, 32000]

uids.each_with_index do |uid, index|
  shift = index * 100

  mysqlctld = node['vitess']['mysqlctld'].dup
  mysqlctld['tablet_uid'] = uid
  mysqlctld['port'] = 10000 + shift
  mysqlctld['db_port'] = 11000 + shift
  mysqlctld['grpc_port'] = 12000 + shift
  mysqlctld['mysql_port'] = 13000 + shift
  mysqlctld['service_map'] = 'grpc-queryservice,grpc-tabletmanager,grpc-updatestream'

  mysqlctld_service "mysqlctld instance #{index}" do
    args mysqlctld
    service_name "mysqlctld#{index}"
    init_dbsql_sql_postfix "mysqlctld#{index}"
  end
end

# Let mysqlctld initialize
sleep 80

# dirty way to create database on MySQL master directly
execute 'create commerce database' do
  command "sleep 20; echo 'CREATE DATABASE IF NOT EXISTS vt_#{init_keyspace};' | mysql -S /var/lib/vtdataroot/vt_#{sprintf("%010d", uids.last)}/mysql.sock"
  action :run
end

uids.each_with_index do |uid, index|
  shift = index * 100

  # Tablet 1
  vttablet = node['vitess']['vttablet'].dup
  vttablet['tablet-path'] = sprintf("#{cell}-%010d", uid)
  vttablet['init_keyspace'] = init_keyspace
  vttablet['init_shard'] = '0'
  vttablet['init_tablet_type'] = 'replica'
  vttablet['health_check_interval'] = '5s'
  vttablet['enable_semi_sync'] = 1
  vttablet['enable_replication_reporter'] = 1
  vttablet['port'] = 25000 + shift
  vttablet['db_port'] = 25000 + shift
  vttablet['grpc_port'] = 26000 + shift
  vttablet['service_map'] = 'grpc-queryservice,grpc-tabletmanager,grpc-updatestream'

  if index > 0
    vttablet['init_tablet_type'] = 'rdonly'
  end

  vttablet_service "vttablet instance #{index}" do
    args vttablet
    service_name "vttablet#{index}"
  end
end

# Let vttablet initialize
sleep 60

# Since this is the first time the shard has been started,
# the tablets are not already doing any replication, and there is no
# existing master. The `InitShardMaster` command above uses the `-force` flag
# to bypass the usual sanity checks that would apply if this wasn't a
# brand new shard.
vtctl_artifact 'InitShardMaster' do
  command %W[
    -alsologtostderr=1
    -topo_implementation #{topo_implementation}
    -topo_global_server_address #{topo_global_server_address}
    -topo_global_root #{topo_global_root}
    InitShardMaster -force #{init_keyspace}/0 #{cell}-#{uids.last}
  ].join(' ')
end

%w[create_commerce_schema.sql vschema_commerce_initial.json].each do |file|
  cookbook_file "/root/#{file}" do
    source file
    owner 'vitess'
    group 'vitess'
    mode '0644'
    action :create
  end
end

# Creating schema
vtctl_artifact 'ApplySchema -sql-file' do
  command %W[
    -alsologtostderr=1
    -topo_implementation #{topo_implementation}
    -topo_global_server_address #{topo_global_server_address}
    -topo_global_root #{topo_global_root}
    ApplySchema -sql-file /root/create_commerce_schema.sql #{init_keyspace}
  ].join(' ')
end

vtctl_artifact 'ApplyVSchema -vschema_file' do
  command %W[
    -alsologtostderr=1
    -topo_implementation #{topo_implementation}
    -topo_global_server_address #{topo_global_server_address}
    -topo_global_root #{topo_global_root}
    ApplyVSchema -vschema_file /root/vschema_commerce_initial.json #{init_keyspace}
  ].join(' ')
end

# vtgate
vtgate = node['vitess']['vtgate'].dup
vtgate['cell'] = cell
vtgate['cells_to_watch'] = cell
vtgate['mysql_server_socket_path'] = '/tmp/vtgate.sock'

vtgate_service 'default' do
  args vtgate
end

vtworker = node['vitess']['vtworker'].dup
vtworker['cell'] = cell

vtworker_service 'default instance' do
  args vtworker
end
