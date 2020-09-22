default['vitess']['user'] = 'vitess'
default['vitess']['group'] = 'vitess'

# the path of the global topology data in the global topology server
default['vitess']['topo_global_root'] = '/vitess/global'
# the address of the global topology server
default['vitess']['topo_global_server_address'] = 'localhost:2379'
# the topology implementation to use
default['vitess']['topo_implementation'] = 'etcd2'

default['vitess']['version']['mysqlctld'] = 'v7.0.2-40ee160'
default['vitess']['version']['vtctlclient'] = 'v7.0.2-40ee160'
default['vitess']['version']['vtctld'] = 'v7.0.2-40ee160'
default['vitess']['version']['vtgate'] = 'v7.0.2-40ee160'
default['vitess']['version']['vttablet'] = 'v7.0.2-40ee160'
default['vitess']['version']['vtworker'] = 'v7.0.2-40ee160'
default['vitess']['version']['mysqlctl'] = 'v7.0.2-40ee160'
default['vitess']['version']['vtctl'] = 'v7.0.2-40ee160'
default['vitess']['version']['vtexplain'] = 'v7.0.2-40ee160'
default['vitess']['version']['vtbench'] = 'v7.0.2-40ee160'

# host to send spans to. if empty, no tracing will be done
default['vitess']['datadog-agent-host'] = nil

# port to send spans to. if empty, no tracing will be done
default['vitess']['datadog-agent-port'] = nil
