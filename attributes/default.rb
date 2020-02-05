default['vitess']['user'] = 'vitess'
default['vitess']['group'] = 'vitess'

# the path of the global topology data in the global topology server
default['vitess']['topo_global_root'] = '/vitess/global'
# the address of the global topology server
default['vitess']['topo_global_server_address'] = 'localhost:2379'
# the topology implementation to use
default['vitess']['topo_implementation'] = 'etcd2'

default['vitess']['version']['mysqlctld'] = 'v4.0.1-041757f'
default['vitess']['version']['vtctlclient'] = 'v4.0.1-041757f'
default['vitess']['version']['vtctld'] = 'v4.0.1-041757f'
default['vitess']['version']['vtgate'] = 'v4.0.1-041757f'
default['vitess']['version']['vttablet'] = 'v4.0.1-041757f'
default['vitess']['version']['vtworker'] = 'v4.0.1-041757f'
default['vitess']['version']['mysqlctl'] = 'v4.0.1-041757f'
default['vitess']['version']['vtctl'] = 'v4.0.1-041757f'
default['vitess']['version']['vtexplain'] = 'v4.0.1-041757f'
default['vitess']['version']['vtbench'] = 'v4.0.1-041757f'
