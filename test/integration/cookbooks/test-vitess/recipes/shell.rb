vtctl_shell 'ApplySchema -sql-file' do
  command %W[
    -topo_implementation zk2 -topo_global_server_address localhost:2181 -topo_global_root /vitess/vin
    ApplySchema -sql-file /root/create_commerce_schema.sql commerce
  ].join(' ')
  environment 'KITCHEN' => 1
  file_prefix 'ApplySchema'
end

# above Chef resource will create shell script wrapper
# for this command ant place it in '/usr/local/bin/vtctl-ApplySchema'
# file_prefix is mandatory attribute and is used to namespace custom
# commands

vtctlclient_shell 'VtctlClient' do
  command %W[
    vtctlclient
  ].join(' ')
  environment 'CLIENT' => 1
  file_prefix 'client'
end

mysqlctl_shell 'Mysqlctl' do
  command %W[
    mysqlctl
  ].join(' ')
  environment 'CL' => 1
  file_prefix 'client'
end
