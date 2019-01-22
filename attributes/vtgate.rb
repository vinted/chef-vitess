# value Specifies the tablet types this vtgate is allowed to route queries to
default['vitess']['vtgate']['allowed_tablet_types'] = nil

# log to standard error as well as files
default['vitess']['vtgate']['alsologtostderr'] = 1

# int Maximum number of requests retried simultaneously. More concurrency will increase the load on the MASTER vttablet when draining the buffer. (default 1)
default['vitess']['vtgate']['buffer_drain_concurrency'] = 1

# string If not empty, limit buffering to these entries (comma separated). Entry format: keyspace or keyspace/shard. Requires --enable_buffer=true.
default['vitess']['vtgate']['buffer_keyspace_shards'] = nil

# duration Stop buffering completely if a failover takes longer than this duration. (default 20s)
default['vitess']['vtgate']['buffer_max_failover_duration'] = '20s'

# duration Minimum time between the end of a failover and the start of the next one (tracked per shard). Faster consecutive failovers will not trigger buffering. (default 1m0s)
default['vitess']['vtgate']['buffer_min_time_between_failovers'] = '1m0s'

# int Maximum number of buffered requests in flight (across all ongoing failovers). (default 10)
default['vitess']['vtgate']['buffer_size'] = 10

# duration Duration for how long a request should be buffered at most. (default 10s)
default['vitess']['vtgate']['buffer_window'] = '10s'

# string comma-separated list of cells for watching tablets
default['vitess']['vtgate']['cells_to_watch'] = nil

# string cell to use (default "test_nj")
default['vitess']['vtgate']['cell'] = 'test_nj'

# string JSON File to read the topos/tokens from.
default['vitess']['vtgate']['consul_auth_static_file'] = nil

# string write cpu profile to file
default['vitess']['vtgate']['cpu_profile'] = nil

# value The default tablet type to set for queries, when one is not explicitly selected (default MASTER)
default['vitess']['vtgate']['default_tablet_type'] = 'MASTER'

# if specified, this process will not route any queries to local tablets in the local cell
default['vitess']['vtgate']['disable_local_gateway'] = nil

# duration the replication lag that is considered too high when selecting the minimum num vttablets for serving (default 2h0m0s)
default['vitess']['vtgate']['discovery_high_replication_lag_minimum_serving'] = '2h0m0s'

# duration the replication lag that is considered low enough to be healthy (default 30s)
default['vitess']['vtgate']['discovery_low_replication_lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['vtgate']['emit_stats'] = nil

# Detect and log failover events, but do not actually buffer requests.
default['vitess']['vtgate']['enable_buffer_dry_run'] = nil

# Enable buffering (stalling) of master traffic during failovers.
default['vitess']['vtgate']['enable_buffer'] = nil

# if specified, this process will also expose a QueryService interface that allows other vtgates to talk through this vtgate to the underlying tablets.
default['vitess']['vtgate']['enable_forwarding'] = nil

# int gate server query cache size, maximum number of queries to be cached. vtgate analyzes every incoming query and generate a query plan, these plans are being cached in a lru cache. This config controls the capacity of the lru cache. (default 10000)
default['vitess']['vtgate']['gate_query_cache_size'] = 10000

# string The implementation of gateway (default "discoverygateway")
default['vitess']['vtgate']['gateway_implementation'] = 'discoverygateway'

# duration At startup, the gateway will wait up to that duration to get one tablet per keyspace/shard/tablettype (default 30s)
default['vitess']['vtgate']['gateway_initial_tablet_timeout'] = '30s'

# string Which auth plugin implementation to use (eg: static)
default['vitess']['vtgate']['grpc_auth_mode'] = nil

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
default['vitess']['vtgate']['grpc_auth_static_client_creds'] = nil

# string JSON File to read the users/passwords from.
default['vitess']['vtgate']['grpc_auth_static_password_file'] = nil

# string ca to use, requires TLS, and enforces client cert check
default['vitess']['vtgate']['grpc_ca'] = nil

# string certificate to use, requires grpc_key, enables TLS
default['vitess']['vtgate']['grpc_cert'] = nil

# string how to compress gRPC, default: nothing, supported: snappy
default['vitess']['vtgate']['grpc_compression'] = nil

# Enable GRPC tracing
default['vitess']['vtgate']['grpc_enable_tracing'] = nil

# int grpc initial connection window size
default['vitess']['vtgate']['grpc_initial_conn_window_size'] = nil

# int grpc initial window size
default['vitess']['vtgate']['grpc_initial_window_size'] = nil

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
default['vitess']['vtgate']['grpc_keepalive_time'] = nil

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
default['vitess']['vtgate']['grpc_keepalive_timeout'] = nil

# string key to use, requires grpc_cert, enables TLS
default['vitess']['vtgate']['grpc_key'] = nil

# duration Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vitess']['vtgate']['grpc_max_connection_age'] = '2562047h47m16.854775807s'

# duration Additional grace period after grpc_max_connection_age, after which connections are forcibly closed. (default 2562047h47m16.854775807s)
default['vitess']['vtgate']['grpc_max_connection_age_grace'] = '2562047h47m16.854775807s'

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vitess']['vtgate']['grpc_max_message_size'] = 16777216

# int Port to listen on for gRPC calls
default['vitess']['vtgate']['grpc_port'] = nil

# Enable gRPC monitoring with Prometheus
default['vitess']['vtgate']['grpc_prometheus'] = nil

# int grpc server initial connection window size
default['vitess']['vtgate']['grpc_server_initial_conn_window_size'] = nil

# int grpc server initial window size
default['vitess']['vtgate']['grpc_server_initial_window_size'] = nil

# duration grpc server minimum keepalive time (default 5m0s)
default['vitess']['vtgate']['grpc_server_keepalive_enforcement_policy_min_time'] = '5m0s'

# If set, and SSL is not used, will set the immediate caller id from the effective caller id's principal.
default['vitess']['vtgate']['grpc_use_effective_callerid'] = nil

# duration health check retry delay (default 2ms)
default['vitess']['vtgate']['healthcheck_retry_delay'] = '2ms'

# duration the health check timeout period (default 1m0s)
default['vitess']['vtgate']['healthcheck_timeout'] = '1m0s'

# string the name of the influxdb database (default "vitess")
default['vitess']['vtgate']['influxdb_database'] = 'vitess'

# string the influxdb host (with port) (default "localhost:8086")
default['vitess']['vtgate']['influxdb_host'] = 'localhost:8086'

# string influxdb password (default "root")
default['vitess']['vtgate']['influxdb_password'] = 'root'

# string influxdb username (default "root")
default['vitess']['vtgate']['influxdb_username'] = 'root'

# duration keep logs for this long (zero to keep forever)
default['vitess']['vtgate']['keep_logs'] = nil

# value Specifies a comma-separated list of other l2 vtgate pools to connect to. These other vtgates must run with the --enable_forwarding flag
default['vitess']['vtgate']['l2vtgate_addrs'] = nil

# duration keep running at least this long after SIGTERM before stopping (default 50ms)
default['vitess']['vtgate']['lameduck-period'] = '50ms'

# duration timeout for acquiring topology locks (default 30s)
default['vitess']['vtgate']['lock_timeout'] = '30s'

# value when logging hits line file:N, emit a stack trace
default['vitess']['vtgate']['log_backtrace_at'] = nil

# string If non-empty, write log files in this directory
default['vitess']['vtgate']['log_dir'] = nil

# string Enable query logging to the specified file
default['vitess']['vtgate']['log_queries_to_file'] = nil

# log to standard error instead of files
default['vitess']['vtgate']['logtostderr'] = nil

# int profile every n bytes allocated (default 524288)
default['vitess']['vtgate']['mem-profile-rate'] = 524288

# duration the amount of time to give for a vttablet to resume if it ends a message stream, usually because of a reparent. (default 30s)
default['vitess']['vtgate']['message_stream_grace_period'] = '30s'

# int the minimum number of vttablets that will be continue to be used even with low replication lag (default 2)
default['vitess']['vtgate']['min_number_serving_vttablets'] = 2

# int profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vitess']['vtgate']['mutex-profile-fraction'] = nil

# If set, the server will allow the use of a clear text password over non-SSL connections.
default['vitess']['vtgate']['mysql_allow_clear_text_without_tls'] = nil

# string Which auth server implementation to use. (default "static")
default['vitess']['vtgate']['mysql_auth_server_impl'] = 'static'

# string JSON File to read the users/passwords from.
default['vitess']['vtgate']['mysql_auth_server_static_file'] = nil

# string JSON representation of the users/passwords config.
default['vitess']['vtgate']['mysql_auth_server_static_string'] = nil

# string JSON File from which to read LDAP server config.
default['vitess']['vtgate']['mysql_ldap_auth_config_file'] = nil

# string JSON representation of LDAP server config.
default['vitess']['vtgate']['mysql_ldap_auth_config_string'] = nil

# string client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default "mysql_clear_password")
default['vitess']['vtgate']['mysql_ldap_auth_method'] = 'mysql_clear_password'

# string Binds on this address when listening to MySQL binary protocol. Useful to restrict listening to 'localhost' only for instance.
default['vitess']['vtgate']['mysql_server_bind_address'] = nil

# int If set, also listen for MySQL binary protocol connections on this port. (default -1)
default['vitess']['vtgate']['mysql_server_port'] = -1

# duration mysql query timeout
default['vitess']['vtgate']['mysql_server_query_timeout'] = nil

# duration connection read timeout
default['vitess']['vtgate']['mysql_server_read_timeout'] = nil

# Reject insecure connections but only if mysql_server_ssl_cert and mysql_server_ssl_key are provided
default['vitess']['vtgate']['mysql_server_require_secure_transport'] = nil

# string This option specifies the Unix socket file to use when listening for local connections. By default it will be empty and it won't listen to a unix socket
default['vitess']['vtgate']['mysql_server_socket_path'] = nil

# string Path to ssl CA for mysql server plugin SSL. If specified, server will require and validate client certs.
default['vitess']['vtgate']['mysql_server_ssl_ca'] = nil

# string Path to the ssl cert for mysql server plugin SSL
default['vitess']['vtgate']['mysql_server_ssl_cert'] = nil

# string Path to ssl key for mysql server plugin SSL
default['vitess']['vtgate']['mysql_server_ssl_key'] = nil

# string MySQL server version to advertise. (default "5.5.10-Vitess")
default['vitess']['vtgate']['mysql_server_version'] = '5.5.10-Vitess'

# duration connection write timeout
default['vitess']['vtgate']['mysql_server_write_timeout'] = nil

# duration Warn if it takes more than the given threshold for a mysql connection to establish
default['vitess']['vtgate']['mysql_slow_connect_warn_threshold'] = nil

# string Select tcp, tcp4, or tcp6 to control the socket type. (default "tcp")
default['vitess']['vtgate']['mysql_tcp_version'] = 'tcp'

# Rewrite queries with bind vars. Turn this off if the app itself sends normalized queries with bind vars. (default true)
default['vitess']['vtgate']['normalize_queries'] = true

# duration wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vitess']['vtgate']['onterm_timeout'] = '10s'

# string URI of opentsdb /api/put method
default['vitess']['vtgate']['opentsdb_uri'] = nil

# string If set, the process will write its pid to the named file, and delete it on graceful shutdown.
default['vitess']['vtgate']['pid_file'] = nil

# int port for the server
default['vitess']['vtgate']['port'] = nil

# duration how often try to remove old logs (default 1h0m0s)
default['vitess']['vtgate']['purge_logs_interval'] = '1h0m0s'

# string format for query logs ("text" or "json") (default "text")
default['vitess']['vtgate']['querylog-format'] = 'text'

# redact full queries and bind variables from debug UI
default['vitess']['vtgate']['redact-debug-ui-queries'] = nil

# int retry count (default 2)
default['vitess']['vtgate']['retry-count'] = 2

# string security policy to enforce for URLs
default['vitess']['vtgate']['security_policy'] = nil

# value comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vitess']['vtgate']['service_map'] = nil

# int truncate queries in error logs to the given length (default unlimited)
default['vitess']['vtgate']['sql-max-length-errors'] = 0

# int truncate queries in debug UIs to the given length (default 512) (default 512)
default['vitess']['vtgate']['sql-max-length-ui'] = 512

# duration how frequently to refresh the topology for cached entries (default 1s)
default['vitess']['vtgate']['srv_topo_cache_refresh'] = '1s'

# duration how long to use cached entries for topology (default 1s)
default['vitess']['vtgate']['srv_topo_cache_ttl'] = '1s'

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vitess']['vtgate']['stats_backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['vtgate']['stats_emit_period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vitess']['vtgate']['stderrthreshold'] = 1

# int the number of bytes sent from vtgate for each stream call. It's recommended to keep this value in sync with vttablet's query-server-config-stream-buffer-size. (default 32768)
default['vitess']['vtgate']['stream_buffer_size'] = 32768

# value Specifies a comma-separated list of 'keyspace|shard_name or keyrange' values to filter the tablets to watch
default['vitess']['vtgate']['tablet_filters'] = nil

# string the server ca to use to validate servers when connecting
default['vitess']['vtgate']['tablet_grpc_ca'] = nil

# string the cert to use to connect
default['vitess']['vtgate']['tablet_grpc_cert'] = nil

# string the key to use to connect
default['vitess']['vtgate']['tablet_grpc_key'] = nil

# string the server name to use to validate server certificate
default['vitess']['vtgate']['tablet_grpc_server_name'] = nil

# string how to talk to the vttablets (default "grpc")
default['vitess']['vtgate']['tablet_protocol'] = 'grpc'

# duration tablet refresh interval (default 1m0s)
default['vitess']['vtgate']['tablet_refresh_interval'] = '1m0s'

# tablet refresh reloads the tablet address/port map from topo in case it changes (default true)
default['vitess']['vtgate']['tablet_refresh_known_tablets'] = true

# string wait till connected for specified tablet types during Gateway initialization
default['vitess']['vtgate']['tablet_types_to_wait'] = nil

# string format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how to customize this. (default "http://{{.GetTabletHostPort}}")
default['vitess']['vtgate']['tablet_url_template'] = 'http://{{.GetTabletHostPort}}'

# duration time of the long poll for watch queries. Interrupting a watch may wait for up to that time. (default 30s)
default['vitess']['vtgate']['topo_consul_watch_poll_duration'] = '30s'

# int Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going. (default 30)
default['vitess']['vtgate']['topo_etcd_lease_ttl'] = 30

# string the path of the global topology data in the global topology server
default['vitess']['vtgate']['topo_global_root'] = '/vitess/global'

# string the address of the global topology server
default['vitess']['vtgate']['topo_global_server_address'] = 'localhost:21811'

# string the topology implementation to use (default "zookeeper")
default['vitess']['vtgate']['topo_implementation'] = 'zk2'

# int concurrent topo reads (default 32)
default['vitess']['vtgate']['topo_read_concurrency'] = 32

# duration zk base timeout (see zk.Connect) (default 30s)
default['vitess']['vtgate']['topo_zk_base_timeout'] = '30s'

# int maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vitess']['vtgate']['topo_zk_max_concurrency'] = 64

# string the server ca to use to validate servers when connecting to the zk topo server
default['vitess']['vtgate']['topo_zk_tls_ca'] = nil

# string the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
default['vitess']['vtgate']['topo_zk_tls_cert'] = nil

# string the key to use to connect to the zk topo server, enables TLS
default['vitess']['vtgate']['topo_zk_tls_key'] = nil

# string SINGLE: disallow multi-db transactions, MULTI: allow multi-db transactions with best effort commit, TWOPC: allow multi-db transactions with 2pc commit (default "MULTI")
default['vitess']['vtgate']['transaction_mode'] = 'MULTI'

# value comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['vtgate']['vmodule'] = nil

# string List of users authorized to execute vschema ddl operations, or '%' to allow all users.
default['vitess']['vtgate']['vschema_ddl_authorized_users'] = nil

# string address of a vtctld instance
default['vitess']['vtgate']['vtctld_addr'] = nil

# prevent bind vars from escaping in returned errors
default['vitess']['vtgate']['vtgate-config-terse-errors'] = nil

# value log level for V logs
default['vitess']['vtgate']['v'] = nil

