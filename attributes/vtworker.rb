# log to standard error as well as files
default['vitess']['vtworker']['alsologtostderr'] = nil

# string the protocol to download binlogs from a vttablet (default "grpc")
default['vitess']['vtworker']['binlog_player_protocol'] = 'grpc'

# string cell to pick servers from
default['vitess']['vtworker']['cell'] = nil

# Workers copying data for backups and clones
default['vitess']['vtworker']['clones:'] = nil

# duration Interval between each status update when vtworker is executing a single command from the command line (default 1s)
default['vitess']['vtworker']['command_display_interval'] = '1s'

# string JSON File to read the topos/tokens from.
default['vitess']['vtworker']['consul_auth_static_file'] = nil

# string write cpu profile to file
default['vitess']['vtworker']['cpu_profile'] = nil

# string db credentials file
default['vitess']['vtworker']['db-credentials-file'] = nil

# string db credentials server type (use 'file' for the file implementation) (default "file")
default['vitess']['vtworker']['db-credentials-server'] = 'file'

# Workers comparing and validating data
default['vitess']['vtworker']['diffs:'] = nil

# duration the replication lag that is considered too high when selecting the minimum num vttablets for serving (default 2h0m0s)
default['vitess']['vtworker']['discovery_high_replication_lag_minimum_serving'] = '2h0m0s'

# duration the replication lag that is considered low enough to be healthy (default 30s)
default['vitess']['vtworker']['discovery_low_replication_lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['vtworker']['emit_stats'] = nil

# duration Amount of time we should wait before retrying ExecuteFetch calls (default 30s)
default['vitess']['vtworker']['executefetch_retry_time'] = '30s'

# string Which auth plugin implementation to use (eg: static)
default['vitess']['vtworker']['grpc_auth_mode'] = nil

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
default['vitess']['vtworker']['grpc_auth_static_client_creds'] = nil

# string JSON File to read the users/passwords from.
default['vitess']['vtworker']['grpc_auth_static_password_file'] = nil

# string ca to use, requires TLS, and enforces client cert check
default['vitess']['vtworker']['grpc_ca'] = nil

# string certificate to use, requires grpc_key, enables TLS
default['vitess']['vtworker']['grpc_cert'] = nil

# string how to compress gRPC, default: nothing, supported: snappy
default['vitess']['vtworker']['grpc_compression'] = nil

# Enable GRPC tracing
default['vitess']['vtworker']['grpc_enable_tracing'] = nil

# int grpc initial connection window size
default['vitess']['vtworker']['grpc_initial_conn_window_size'] = nil

# int grpc initial window size
default['vitess']['vtworker']['grpc_initial_window_size'] = nil

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
default['vitess']['vtworker']['grpc_keepalive_time'] = nil

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
default['vitess']['vtworker']['grpc_keepalive_timeout'] = nil

# string key to use, requires grpc_cert, enables TLS
default['vitess']['vtworker']['grpc_key'] = nil

# duration Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vitess']['vtworker']['grpc_max_connection_age'] = '2562047h47m16.854775807s'

# duration Additional grace period after grpc_max_connection_age, after which connections are forcibly closed. (default 2562047h47m16.854775807s)
default['vitess']['vtworker']['grpc_max_connection_age_grace'] = '2562047h47m16.854775807s'

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vitess']['vtworker']['grpc_max_message_size'] = 16777216

# int Port to listen on for gRPC calls
default['vitess']['vtworker']['grpc_port'] = nil

# Enable gRPC monitoring with Prometheus
default['vitess']['vtworker']['grpc_prometheus'] = nil

# int grpc server initial connection window size
default['vitess']['vtworker']['grpc_server_initial_conn_window_size'] = nil

# int grpc server initial window size
default['vitess']['vtworker']['grpc_server_initial_window_size'] = nil

# duration grpc server minimum keepalive time (default 5m0s)
default['vitess']['vtworker']['grpc_server_keepalive_enforcement_policy_min_time'] = '5m0s'

# string the name of the influxdb database (default "vitess")
default['vitess']['vtworker']['influxdb_database'] = 'vitess'

# string the influxdb host (with port) (default "localhost:8086")
default['vitess']['vtworker']['influxdb_host'] = 'localhost:8086'

# string influxdb password (default "root")
default['vitess']['vtworker']['influxdb_password'] = 'root'

# string influxdb username (default "root")
default['vitess']['vtworker']['influxdb_username'] = 'root'

# duration keep logs for this long (zero to keep forever)
default['vitess']['vtworker']['keep_logs'] = nil

# duration keep running at least this long after SIGTERM before stopping (default 50ms)
default['vitess']['vtworker']['lameduck-period'] = '50ms'

# [--exclude_tables=''] <keyspace/shard> SplitClone [--online=false] [--offline=false] [--exclude_tables=''] <keyspace/shard>
default['vitess']['vtworker']['legacysplitclone'] = nil

# duration timeout for acquiring topology locks (default 30s)
default['vitess']['vtworker']['lock_timeout'] = '30s'

# value when logging hits line file:N, emit a stack trace
default['vitess']['vtworker']['log_backtrace_at'] = nil

# string If non-empty, write log files in this directory
default['vitess']['vtworker']['log_dir'] = nil

# log to standard error instead of files
default['vitess']['vtworker']['logtostderr'] = nil

# int profile every n bytes allocated (default 524288)
default['vitess']['vtworker']['mem-profile-rate'] = 524288

# int the minimum number of vttablets that will be continue to be used even with low replication lag (default 2)
default['vitess']['vtworker']['min_number_serving_vttablets'] = 2

# int profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vitess']['vtworker']['mutex-profile-fraction'] = nil

# string JSON File to read the users/passwords from.
default['vitess']['vtworker']['mysql_auth_server_static_file'] = nil

# string JSON representation of the users/passwords config.
default['vitess']['vtworker']['mysql_auth_server_static_string'] = nil

# duration wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vitess']['vtworker']['onterm_timeout'] = '10s'

# string URI of opentsdb /api/put method
default['vitess']['vtworker']['opentsdb_uri'] = nil

# string If set, the process will write its pid to the named file, and delete it on graceful shutdown.
default['vitess']['vtworker']['pid_file'] = nil

# int port for the server
default['vitess']['vtworker']['port'] = nil

# duration how often try to remove old logs (default 1h0m0s)
default['vitess']['vtworker']['purge_logs_interval'] = '1h0m0s'

# duration Amount of time to wait for remote actions (like replication stop, ...) (default 1m0s)
default['vitess']['vtworker']['remote_actions_timeout'] = '1m0s'

# duration Amount of time we wait before giving up on a retryable action (e.g. write to destination, waiting for healthy tablets) (default 2h0m0s)
default['vitess']['vtworker']['retry_duration'] = '2h0m0s'

# string security policy to enforce for URLs
default['vitess']['vtworker']['security_policy'] = nil

# value comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vitess']['vtworker']['service_map'] = nil

# [--exclude_tables=''] <keyspace/shard> VerticalSplitDiff <keyspace/shard>
default['vitess']['vtworker']['splitdiff'] = nil

# int truncate queries in error logs to the given length (default unlimited)
default['vitess']['vtworker']['sql-max-length-errors'] = 0

# int truncate queries in debug UIs to the given length (default 512) (default 512)
default['vitess']['vtworker']['sql-max-length-ui'] = 512

# duration how frequently to refresh the topology for cached entries (default 1s)
default['vitess']['vtworker']['srv_topo_cache_refresh'] = '1s'

# duration how long to use cached entries for topology (default 1s)
default['vitess']['vtworker']['srv_topo_cache_ttl'] = '1s'

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vitess']['vtworker']['stats_backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['vtworker']['stats_emit_period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vitess']['vtworker']['stderrthreshold'] = 1

# string the server ca to use to validate servers when connecting
default['vitess']['vtworker']['tablet_grpc_ca'] = nil

# string the cert to use to connect
default['vitess']['vtworker']['tablet_grpc_cert'] = nil

# string the key to use to connect
default['vitess']['vtworker']['tablet_grpc_key'] = nil

# string the server name to use to validate server certificate
default['vitess']['vtworker']['tablet_grpc_server_name'] = nil

# string the server ca to use to validate servers when connecting
default['vitess']['vtworker']['tablet_manager_grpc_ca'] = nil

# string the cert to use to connect
default['vitess']['vtworker']['tablet_manager_grpc_cert'] = nil

# int concurrency to use to talk to a vttablet server for performance-sensitive RPCs (like ExecuteFetchAs{Dba,AllPrivs,App}) (default 8)
default['vitess']['vtworker']['tablet_manager_grpc_concurrency'] = 8

# string the key to use to connect
default['vitess']['vtworker']['tablet_manager_grpc_key'] = nil

# string the server name to use to validate server certificate
default['vitess']['vtworker']['tablet_manager_grpc_server_name'] = nil

# string the protocol to use to talk to vttablet (default "grpc")
default['vitess']['vtworker']['tablet_manager_protocol'] = 'grpc'

# string how to talk to the vttablets (default "grpc")
default['vitess']['vtworker']['tablet_protocol'] = 'grpc'

# string format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how to customize this. (default "http://{{.GetTabletHostPort}}")
default['vitess']['vtworker']['tablet_url_template'] = 'http://{{.GetTabletHostPort}}'

# commands are listed below, sorted by group. Use './vt/bin/vtworker <command> -h' for more help.
default['vitess']['vtworker']['the'] = nil

# global optional parameters are:
default['vitess']['vtworker']['the'] = nil

# duration time of the long poll for watch queries. Interrupting a watch may wait for up to that time. (default 30s)
default['vitess']['vtworker']['topo_consul_watch_poll_duration'] = '30s'

# int Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going. (default 30)
default['vitess']['vtworker']['topo_etcd_lease_ttl'] = 30

# string the path of the global topology data in the global topology server
default['vitess']['vtworker']['topo_global_root'] = '/vitess/global'

# string the address of the global topology server
default['vitess']['vtworker']['topo_global_server_address'] = 'localhost:2181'

# string the topology implementation to use (default "zookeeper")
default['vitess']['vtworker']['topo_implementation'] = 'zk2'

# duration zk base timeout (see zk.Connect) (default 30s)
default['vitess']['vtworker']['topo_zk_base_timeout'] = '30s'

# int maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vitess']['vtworker']['topo_zk_max_concurrency'] = 64

# string the server ca to use to validate servers when connecting to the zk topo server
default['vitess']['vtworker']['topo_zk_tls_ca'] = nil

# string the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
default['vitess']['vtworker']['topo_zk_tls_cert'] = nil

# string the key to use to connect to the zk topo server, enables TLS
default['vitess']['vtworker']['topo_zk_tls_key'] = nil

# string If set, value is set as immediate caller id in the request and used by vttablet for TableACL check
default['vitess']['vtworker']['username'] = nil

# True iff the workers should use V3-style resharding, which doesn't require a preset sharding key column. (default true)
default['vitess']['vtworker']['use_v3_resharding_mode'] = true

# [--tables=''] <destination keyspace/shard> 
default['vitess']['vtworker']['verticalsplitclone'] = nil

# value comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['vtworker']['vmodule'] = nil

# value log level for V logs
default['vitess']['vtworker']['v'] = nil

# duration time to wait before shutting the query service on old RDONLY tablets during MigrateServedTypes (default 5s)
default['vitess']['vtworker']['wait_for_drain_sleep_rdonly'] = '5s'

# duration time to wait before shutting the query service on old REPLICA tablets during MigrateServedTypes (default 15s)
default['vitess']['vtworker']['wait_for_drain_sleep_replica'] = '15s'

# duration maximum time to wait at the start if less than --min_healthy_tablets are available (default 1m0s)
default['vitess']['vtworker']['wait_for_healthy_tablets_timeout'] = '1m0s'

# duration delay before retrying a failed healthcheck (default 5s)
default['vitess']['vtworker']['worker_healthcheck_retry_delay'] = '5s'

# duration the health check timeout period (default 1m0s)
default['vitess']['vtworker']['worker_healthcheck_timeout'] = '1m0s'

# duration refresh interval for re-reading the topology (default 30s)
default['vitess']['vtworker']['worker_healthcheck_topology_refresh'] = '30s'

