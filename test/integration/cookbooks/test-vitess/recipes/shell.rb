init_keyspace = 'commerce'

vtctl_shell 'ApplySchema -sql-file' do
  command %W(
    ApplySchema
    -topo_implementation #{node['vitess']['topo_implementation']}
    -topo_global_server_address #{node['vitess']['topo_global_server_address']}
    -topo_global_root #{node['vitess']['topo_global_root']}
    -sql-file /root/create_commerce_schema.sql #{init_keyspace}
  ).join(' ')
  environment 'KITCHEN' => 1
  file_prefix 'ApplySchema'
end

# above Chef resource will create shell script wrapper
# for this command ant place it in '/usr/local/bin/vtctl-ApplySchema'
# file_prefix is mandatory attribute and is used to namespace custom
# commands

vtctlclient_shell 'VtctlClient' do
  command %W(
    vtctlclient
  ).join(' ')
  environment 'CLIENT' => 1
  file_prefix 'client'
end

mysqlctl_shell 'Mysqlctl' do
  command %W(
    mysqlctl
  ).join(' ')
  environment 'CL' => 1
  file_prefix 'client'
end
