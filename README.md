# Vitess Chef cookbook

Vitess is a database clustering system for horizontal scaling of MySQL.

[![Build Status](https://travis-ci.org/vinted/chef-vitess.svg?branch=master)](https://travis-ci.org/vinted/chef-vitess)
[![Cookbook Version](https://img.shields.io/cookbook/v/vitess.svg)](https://supermarket.chef.io/cookbooks/vitess)

Cookbook configures Vitess clustering system through custom Chef resources. Supported from v3.0 version.

## Attributes

```ruby
# default.rb
default['vitess']['user'] = 'vitess'
default['vitess']['group'] = 'vitess'

default['vitess']['version']['mysqlctld'] = 'v3.0.0'
default['vitess']['version']['vtctlclient'] = 'v3.0.0'
default['vitess']['version']['vtctld'] = 'v3.0.0'
default['vitess']['version']['vtgate'] = 'v3.0.0'
default['vitess']['version']['vttablet'] = 'v3.0.0'
default['vitess']['version']['vtworker'] = 'v3.0.0'
default['vitess']['version']['mysqlctl'] = 'v3.0.0'
default['vitess']['version']['vtctl'] = 'v3.0.0'
default['vitess']['version']['vtexplain'] = 'v3.0.0'
default['vitess']['version']['vtbench'] = 'v3.0.0'
```

For Vitess configuration there are over 731 options available, check them in attributes folder.

  - mycnf
  - mysqlctld
  - vtctld
  - vtgate
  - vttablet
  - vtworker

How to bootstrap/start cluster check #Examples section below.

## Requirements

 - Systemd
 - MySQL server/client (VT_MYSQL_ROOT is to '/', so it expects to find in /sbin/ or /usr/sbin)

## Resources

#### mysqlctld

```ruby
mysqlctld_service 'instance0' do
  user                     String,  default: node['vitess']['user']
  group                    String,  default: node['vitess']['group']
  bin_path                 String,  default: /usr/local/bin
  vitess_user_shell        String,  default: /bin/false
  vtroot                   String,  default: /var/lib/vt
  vtdataroot               String,  default: /var/lib/vtdataroot
  mysql_flavor             String,  default: master_mysql56
  vt_mysql_root            String,  default: /
  service_unit_after       Array,   default: ["network.target"]
  service_timeout_sec      Integer, default: 5
  service_restart          String,  default: on-failure
  mycnf                    Hash,    default: node['vitess']['mycnf']
  init_dbsql_sql_cookbook  String,  default: vitess
  init_dbsql_sql_variables Hash,    default: {}
  service_name             String,  default: lazy { bin_name }

  version                  String,  default: node['vitess']['version']['mysqlctld']
  bin_name                 String,  default: mysqlctld
  args                     Hash,    default: lazy { node['vitess']['mysqlctld'] }
end
```

#### vtctld

```ruby
vtctld_service 'instance0' do
  user                     String,  default: node['vitess']['user']
  group                    String,  default: node['vitess']['group']
  bin_path                 String,  default: /usr/local/bin
  vitess_user_shell        String,  default: /bin/false
  vtroot                   String,  default: /var/lib/vt
  vtdataroot               String,  default: /var/lib/vtdataroot
  mysql_flavor             String,  default: master_mysql56
  vt_mysql_root            String,  default: /
  service_unit_after       Array,   default: ["network.target"]
  service_timeout_sec      Integer, default: 5
  service_restart          String,  default: on-failure
  mycnf                    Hash,    default: node['vitess']['mycnf']
  service_name             String,  default: lazy { bin_name }

  version                  String,  default: lazy { node['vitess']['version']['vtctld'] }
  bin_name                 String,  default: vtctld
  args                     Hash,    default: lazy { node['vitess']['vtctld'] }
  web_dir_cookbook         String,  default: vitess
  web_dir2_cookbook        String,  default: vitess
end
```

#### vtgate

```ruby
vtgate_service 'instance0' do
  user                     String,  default: node['vitess']['user']
  group                    String,  default: node['vitess']['group']
  bin_path                 String,  default: /usr/local/bin
  vitess_user_shell        String,  default: /bin/false
  vtroot                   String,  default: /var/lib/vt
  vtdataroot               String,  default: /var/lib/vtdataroot
  mysql_flavor             String,  default: master_mysql56
  vt_mysql_root            String,  default: /
  service_unit_after       Array,   default: ["network.target"]
  service_timeout_sec      Integer, default: 5
  service_restart          String,  default: on-failure
  mycnf                    Hash,    default: node['vitess']['mycnf']
  service_name             String,  default: lazy { bin_name }

  version                  String,  default: lazy { node['vitess']['version']['vtgate'] }
  bin_name                 String,  default: vtgate
  args                     Hash,    default: lazy { node['vitess']['vtgate'] }
end
```

#### vttablet

```ruby
vttablet_service 'instance0' do
  user                     String,  default: node['vitess']['user']
  group                    String,  default: node['vitess']['group']
  bin_path                 String,  default: /usr/local/bin
  vitess_user_shell        String,  default: /bin/false
  vtroot                   String,  default: /var/lib/vt
  vtdataroot               String,  default: /var/lib/vtdataroot
  mysql_flavor             String,  default: master_mysql56
  vt_mysql_root            String,  default: /
  service_unit_after       Array,   default: ["network.target"]
  service_timeout_sec      Integer, default: 5
  service_restart          String,  default: on-failure
  mycnf                    Hash,    default: node['vitess']['mycnf']
  service_name             String,  default: lazy { bin_name }

  version                  String,  default: lazy { node['vitess']['version']['vttablet'] }
  bin_name                 String,  default: vttablet
  args                     Hash,    default: lazy { node['vitess']['vttablet'] }
end
```

#### vtworker

```ruby
vtworker_service 'instance0' do
  user                     String,  default: node['vitess']['user']
  group                    String,  default: node['vitess']['group']
  bin_path                 String,  default: /usr/local/bin
  vitess_user_shell        String,  default: /bin/false
  vtroot                   String,  default: /var/lib/vt
  vtdataroot               String,  default: /var/lib/vtdataroot
  mysql_flavor             String,  default: master_mysql56
  vt_mysql_root            String,  default: /
  service_unit_after       Array,   default: ["network.target"]
  service_timeout_sec      Integer, default: 5
  service_restart          String,  default: on-failure
  mycnf                    Hash,    default: node['vitess']['mycnf']
  service_name             String,  default: lazy { bin_name }

  version                  String,  default: lazy { node['vitess']['version']['vtworker'] }
  bin_name                 String,  default: vtworker
  args                     Hash,    default: lazy { node['vitess']['vtworker'] }
end
```

### Artifacts

#### mysqlctl

```ruby
mysqlctl_artifact 'bin' do
  user                     String,                  default: node['vitess']['user']
  group                    String,                  default: node['vitess']['group']
  bin_path                 String,                  default: /usr/local/bin
  vitess_user_shell        String,                  default: /bin/false
  vtroot                   String,                  default: /var/lib/vt
  vtdataroot               String,                  default: /var/lib/vtdataroot
  mysql_flavor             String,                  default: 'master_mysql56'
  vt_mysql_root            String,                  default: /
  mycnf                    Hash,                    default: node['vitess']['mycnf']
  init_dbsql_sql_cookbook  String,                  default: vitess
  init_dbsql_sql_variables Hash,                    default: {}

  command                  String,                  default:
  command_action           Symbol,                  default: run
  command_creates          String,                  default:
  command_ignore_failure   [TrueClass, FalseClass], default: false
  command_returns          [Integer, Array],        default: 0
  command_run_once         [TrueClass, FalseClass], default: true

  version                  String,                  default: lazy { node['vitess']['version']['mysqlctl'] }
  bin_name                 String,                  default: mysqlctl
end
```

#### vtbench

```ruby
vtbench_artifact 'bin' do
  user                     String,                  default: node['vitess']['user']
  group                    String,                  default: node['vitess']['group']
  bin_path                 String,                  default: /usr/local/bin
  vitess_user_shell        String,                  default: /bin/false
  vtroot                   String,                  default: /var/lib/vt
  vtdataroot               String,                  default: /var/lib/vtdataroot
  mysql_flavor             String,                  default: 'master_mysql56'
  vt_mysql_root            String,                  default: /
  mycnf                    Hash,                    default: node['vitess']['mycnf']

  command                  String,                  default:
  command_action           Symbol,                  default: run
  command_creates          String,                  default:
  command_ignore_failure   [TrueClass, FalseClass], default: false
  command_returns          [Integer, Array],        default: 0
  command_run_once         [TrueClass, FalseClass], default: true

  version                  String,                  default: lazy { node['vitess']['version']['vtbench'] }
  bin_name                 String,                  default: vtbench
end
```

#### vtctl

```ruby
vtctl_artifact 'bin' do
  user                     String,                  default: node['vitess']['user']
  group                    String,                  default: node['vitess']['group']
  bin_path                 String,                  default: /usr/local/bin
  vitess_user_shell        String,                  default: /bin/false
  vtroot                   String,                  default: /var/lib/vt
  vtdataroot               String,                  default: /var/lib/vtdataroot
  mysql_flavor             String,                  default: 'master_mysql56'
  vt_mysql_root            String,                  default: /
  mycnf                    Hash,                    default: node['vitess']['mycnf']

  command                  String,                  default:
  command_action           Symbol,                  default: run
  command_creates          String,                  default:
  command_ignore_failure   [TrueClass, FalseClass], default: false
  command_returns          [Integer, Array],        default: 0
  command_run_once         [TrueClass, FalseClass], default: true

  version                  String,                  default: lazy { node['vitess']['version']['vtctl'] }
  bin_name                 String,                  default: vtctl
end
```

#### vtexplain

```ruby
vtexplain_artifact 'bin' do
  user                     String,                  default: node['vitess']['user']
  group                    String,                  default: node['vitess']['group']
  bin_path                 String,                  default: /usr/local/bin
  vitess_user_shell        String,                  default: /bin/false
  vtroot                   String,                  default: /var/lib/vt
  vtdataroot               String,                  default: /var/lib/vtdataroot
  mysql_flavor             String,                  default: 'master_mysql56'
  vt_mysql_root            String,                  default: /
  mycnf                    Hash,                    default: node['vitess']['mycnf']

  command                  String,                  default:
  command_action           Symbol,                  default: run
  command_creates          String,                  default:
  command_ignore_failure   [TrueClass, FalseClass], default: false
  command_returns          [Integer, Array],        default: 0
  command_run_once         [TrueClass, FalseClass], default: true

  version                  String,                  default: lazy { node['vitess']['version']['vtexplain'] }
  bin_name                 String,                  default: vtexplain
end
```

#### vtctlclient

```ruby
vtctlclient_artifact 'bin' do
  user                     String,                  default: node['vitess']['user']
  group                    String,                  default: node['vitess']['group']
  bin_path                 String,                  default: /usr/local/bin
  vitess_user_shell        String,                  default: /bin/false
  vtroot                   String,                  default: /var/lib/vt
  vtdataroot               String,                  default: /var/lib/vtdataroot
  mysql_flavor             String,                  default: 'master_mysql56'
  vt_mysql_root            String,                  default: /
  mycnf                    Hash,                    default: node['vitess']['mycnf']

  command                  String,                  default:
  command_action           Symbol,                  default: run
  command_creates          String,                  default:
  command_ignore_failure   [TrueClass, FalseClass], default: false
  command_returns          [Integer, Array],        default: 0
  command_run_once         [TrueClass, FalseClass], default: true

  version                  String,                  default: lazy { node['vitess']['version']['vtctlclient'] }
  bin_name                 String,                  default: vtctlclient
end
```

## Examples

```ruby
cell = 'zone1'
topo_global_root = "/vitess/#{cell}"
topo_global_server_address = 'localhost:2181'
init_keyspace = 'commerce'

# Assuming MySQL and Zookeeper is available

vtctl_artifact 'AddCellInfo' do
  command %W[
    -alsologtostderr=1 -topo_implementation zk2 -topo_global_server_address #{topo_global_server_address} -topo_global_root #{topo_global_root}
    AddCellInfo -root #{topo_global_root} -server_address #{topo_global_server_address} #{cell}
  ].join(' ')
  command_run_once true # NOTE: should not be used in production, guarantee is poor and applies only for 1 node
end

vtctld = node['vitess']['vtctld'].dup
vtctld['cell'] = cell
vtctld['service_map'] = 'grpc-vtctl'
vtctld['workflow_manager_init'] = 1
vtctld['workflow_manager_use_election'] = 1
vtctld['topo_global_root'] = topo_global_root
vtctld['topo_global_server_address'] = topo_global_server_address

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
  vttablet['topo_global_root'] = topo_global_root

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
    -alsologtostderr=1 -topo_implementation zk2 -topo_global_server_address #{topo_global_server_address} -topo_global_root #{topo_global_root}
    InitShardMaster -force #{init_keyspace}/0 #{cell}-#{uids.last}
  ].join(' ')
  command_run_once true # NOTE: should not be used in production, guarantee is poor and applies only for 1 node
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
    -alsologtostderr=1 -topo_implementation zk2 -topo_global_server_address #{topo_global_server_address} -topo_global_root #{topo_global_root}
    ApplySchema -sql-file /root/create_commerce_schema.sql #{init_keyspace}
  ].join(' ')
  command_run_once true # NOTE: should not be used in production, guarantee is poor and applies only for 1 node
end

vtctl_artifact 'ApplyVSchema -vschema_file' do
  command %W[
    -alsologtostderr=1 -topo_implementation zk2 -topo_global_server_address #{topo_global_server_address} -topo_global_root #{topo_global_root}
    ApplyVSchema -vschema_file /root/vschema_commerce_initial.json #{init_keyspace}
  ].join(' ')
  command_run_once true # NOTE: should not be used in production, guarantee is poor and applies only for 1 node
end

# vtgate
vtgate = node['vitess']['vtgate'].dup
vtgate['topo_global_root'] = topo_global_root
vtgate['topo_global_server_address'] = topo_global_server_address
vtgate['cell'] = cell
vtgate['cells_to_watch'] = cell
vtgate['mysql_server_socket_path'] = '/tmp/vtgate.sock'

vtgate_service 'default' do
  args vtgate
end

vtworker = node['vitess']['vtworker'].dup
vtworker['cell'] = cell
vtworker['topo_global_root'] = topo_global_root
vtworker['topo_global_server_address'] = topo_global_server_address

vtworker_service 'default instance' do
  args vtworker
end
```

## License

MIT License

Copyright (c) 2019  Vinted

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
