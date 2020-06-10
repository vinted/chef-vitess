default['vitess']['user'] = 'vitess'
default['vitess']['group'] = 'vitess'

# the path of the global topology data in the global topology server
default['vitess']['topo_global_root'] = '/vitess/global'
# the address of the global topology server
default['vitess']['topo_global_server_address'] = 'localhost:2379'
# the topology implementation to use
default['vitess']['topo_implementation'] = 'etcd2'

default['vitess']['version']['mysqlctld'] = 'v6.0-41c356e'
default['vitess']['version']['vtctlclient'] = 'v6.0-41c356e'
default['vitess']['version']['vtctld'] = 'v6.0-41c356e'
default['vitess']['version']['vtgate'] = 'v6.0-41c356e'
default['vitess']['version']['vttablet'] = 'v6.0-41c356e'
default['vitess']['version']['vtworker'] = 'v6.0-41c356e'
default['vitess']['version']['mysqlctl'] = 'v6.0-41c356e'
default['vitess']['version']['vtctl'] = 'v6.0-41c356e'
default['vitess']['version']['vtexplain'] = 'v6.0-41c356e'
default['vitess']['version']['vtbench'] = 'v6.0-41c356e'

# host to send spans to. if empty, no tracing will be done
default['vitess']['datadog-agent-host'] = nil

# port to send spans to. if empty, no tracing will be done
default['vitess']['datadog-agent-port'] = nil
