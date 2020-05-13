# Specifies the tablet types this vtgate is allowed to route queries to
default['vitess']['vtgate']['allowed_tablet_types'] = nil

# log to standard error as well as files
default['vitess']['vtgate']['alsologtostderr'] = 1

# Maximum number of requests retried simultaneously. More concurrency will increase the load on the
# MASTER vttablet when draining the buffer. (default 1)
default['vitess']['vtgate']['buffer_drain_concurrency'] = 1

# If not empty, limit buffering to these entries (comma separated). Entry format: keyspace or
# keyspace/shard. Requires --enable_buffer=true
default['vitess']['vtgate']['buffer_keyspace_shards'] = nil

# Stop buffering completely if a failover takes longer than this duration. (default 20s)
default['vitess']['vtgate']['buffer_max_failover_duration'] = '20s'

# Minimum time between the end of a failover and the start of the next one (tracked per shard).
# Faster consecutive failovers will not trigger buffering. (default 1m0s)
default['vitess']['vtgate']['buffer_min_time_between_failovers'] = '1m0s'

# Maximum number of buffered requests in flight (across all ongoing failovers). (default 10)
default['vitess']['vtgate']['buffer_size'] = 10

# Duration for how long a request should be buffered at most. (default 10s)
default['vitess']['vtgate']['buffer_window'] = '10s'

# cell to use (default "test_nj")
default['vitess']['vtgate']['cell'] = 'test_nj'

# comma-separated list of cells for watching tablets
default['vitess']['vtgate']['cells_to_watch'] = nil

# JSON File to read the topos/tokens from
default['vitess']['vtgate']['consul_auth_static_file'] = nil

# write cpu profile to file
default['vitess']['vtgate']['cpu_profile'] = nil

# The default tablet type to set for queries, when one is not explicitly selected (default MASTER)
default['vitess']['vtgate']['default_tablet_type'] = 'MASTER'

# the replication lag that is considered too high when selecting the minimum num vttablets for
# serving (default 2h0m0s)
default['vitess']['vtgate']['discovery_high_replication_lag_minimum_serving'] = '2h0m0s'

# the replication lag that is considered low enough to be healthy (default 30s)
default['vitess']['vtgate']['discovery_low_replication_lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['vtgate']['emit_stats'] = nil

# Enable buffering (stalling) of master traffic during failovers
default['vitess']['vtgate']['enable_buffer'] = nil

# Detect and log failover events, but do not actually buffer requests
default['vitess']['vtgate']['enable_buffer_dry_run'] = nil

# gate server query cache size, maximum number of queries to be cached. vtgate analyzes every
# incoming query and generate a query plan, these plans are being cached in a lru cache. This config
# controls the capacity of the lru cache. (default 10000)
default['vitess']['vtgate']['gate_query_cache_size'] = 10_000

# The implementation of gateway (default "discoverygateway")
default['vitess']['vtgate']['gateway_implementation'] = 'discoverygateway'

# At startup, the gateway will wait up to that duration to get one tablet per
# keyspace/shard/tablettype (default 30s)
default['vitess']['vtgate']['gateway_initial_tablet_timeout'] = '30s'

# Which auth plugin implementation to use (eg: static)
default['vitess']['vtgate']['grpc_auth_mode'] = nil

# when using grpc_static_auth in the server, this file provides the credentials to use to
# authenticate with server
default['vitess']['vtgate']['grpc_auth_static_client_creds'] = nil

# JSON File to read the users/passwords from
default['vitess']['vtgate']['grpc_auth_static_password_file'] = nil

# ca to use, requires TLS, and enforces client cert check
default['vitess']['vtgate']['grpc_ca'] = nil

# certificate to use, requires grpc_key, enables TLS
default['vitess']['vtgate']['grpc_cert'] = nil

# how to compress gRPC, default: nothing, supported: snappy
default['vitess']['vtgate']['grpc_compression'] = nil

# Enable GRPC tracing
default['vitess']['vtgate']['grpc_enable_tracing'] = nil

# grpc initial connection window size
default['vitess']['vtgate']['grpc_initial_conn_window_size'] = nil

# grpc initial window size
default['vitess']['vtgate']['grpc_initial_window_size'] = nil

# After a duration of this time if the client doesn't see any activity it pings the server to see if
# the transport is still alive. (default 10s)
default['vitess']['vtgate']['grpc_keepalive_time'] = '10s'

# After having pinged for keepalive check, the client waits for a duration of Timeout and if no
# activity is seen even after that the connection is closed. (default 10s)
default['vitess']['vtgate']['grpc_keepalive_timeout'] = '10s'

# key to use, requires grpc_cert, enables TLS
default['vitess']['vtgate']['grpc_key'] = nil

# Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vitess']['vtgate']['grpc_max_connection_age'] = '2562047h47m16.854775807s'

# Additional grace period after grpc_max_connection_age, after which connections are forcibly closed.
# (default 2562047h47m16.854775807s)
default['vitess']['vtgate']['grpc_max_connection_age_grace'] = '2562047h47m16.854775807s'

# Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error
# 'exceeding the max size'. (default 16777216)
default['vitess']['vtgate']['grpc_max_message_size'] = 16_777_216

# Port to listen on for gRPC calls
default['vitess']['vtgate']['grpc_port'] = 15991

# Enable gRPC monitoring with Prometheus
default['vitess']['vtgate']['grpc_prometheus'] = nil

# grpc server initial connection window size
default['vitess']['vtgate']['grpc_server_initial_conn_window_size'] = nil

# grpc server initial window size
default['vitess']['vtgate']['grpc_server_initial_window_size'] = nil

# grpc server minimum keepalive time (default 5m0s)
default['vitess']['vtgate']['grpc_server_keepalive_enforcement_policy_min_time'] = '5m0s'

# grpc server permit client keepalive pings even when there are no active streams (RPCs)
default['vitess']['vtgate']['grpc_server_keepalive_enforcement_policy_permit_without_stream'] = nil

# If set, and SSL is not used, will set the immediate caller id from the effective caller id's
# principal
default['vitess']['vtgate']['grpc_use_effective_callerid'] = nil

# health check retry delay (default 2ms)
default['vitess']['vtgate']['healthcheck_retry_delay'] = '2ms'

# the health check timeout period (default 1m0s)
default['vitess']['vtgate']['healthcheck_timeout'] = '1m0s'

# host and port to send spans to. if empty, no tracing will be done
default['vitess']['vtgate']['jaeger-agent-host'] = nil

# keep logs for this long (using ctime) (zero to keep forever)
default['vitess']['vtgate']['keep_logs'] = nil

# keep logs for this long (using mtime) (zero to keep forever)
default['vitess']['vtgate']['keep_logs_by_mtime'] = nil

# Specifies which keyspaces this vtgate should have access to while routing queries or accessing the
# vschema
default['vitess']['vtgate']['keyspaces_to_watch'] = nil

# keep running at least this long after SIGTERM before stopping (default 50ms)
default['vitess']['vtgate']['lameduck-period'] = '50ms'

# use the legacy algorithm when selecting the vttablets for serving (default true)
default['vitess']['vtgate']['legacy_replication_lag_algorithm'] = true

# when logging hits line file:N, emit a stack trace
default['vitess']['vtgate']['log_backtrace_at'] = nil

# If non-empty, write log files in this directory
default['vitess']['vtgate']['log_dir'] = nil

# log stack traces for errors
default['vitess']['vtgate']['log_err_stacks'] = nil

# Enable query logging to the specified file
default['vitess']['vtgate']['log_queries_to_file'] = nil

# size in bytes at which logs are rotated (glog.MaxSize) (default 1887436800)
default['vitess']['vtgate']['log_rotate_max_size'] = 1_887_436_800

# log to standard error instead of files
default['vitess']['vtgate']['logtostderr'] = nil

# Maximum number of rows that will be held in memory for intermediate results as well as the final
# result. (default 300000)
default['vitess']['vtgate']['max_memory_rows'] = 300_000

# profile every n bytes allocated (default 524288)
default['vitess']['vtgate']['mem-profile-rate'] = 524_288

# the amount of time to give for a vttablet to resume if it ends a message stream, usually because of
# a reparent. (default 30s)
default['vitess']['vtgate']['message_stream_grace_period'] = '30s'

# the minimum number of vttablets that will be continue to be used even with low replication lag
# (default 2)
default['vitess']['vtgate']['min_number_serving_vttablets'] = 2

# profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vitess']['vtgate']['mutex-profile-fraction'] = nil

# If set, the server will allow the use of a clear text password over non-SSL connections
default['vitess']['vtgate']['mysql_allow_clear_text_without_tls'] = nil

# Which auth server implementation to use. (default "static")
default['vitess']['vtgate']['mysql_auth_server_impl'] = 'none'

# JSON File to read the users/passwords from
default['vitess']['vtgate']['mysql_auth_server_static_file'] = nil

# JSON representation of the users/passwords config
default['vitess']['vtgate']['mysql_auth_server_static_string'] = nil

# Ticker to reload credentials
default['vitess']['vtgate']['mysql_auth_static_reload_interval'] = nil

# client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default
# "mysql_clear_password")
default['vitess']['vtgate']['mysql_clientcert_auth_method'] = 'mysql_clear_password'

# Default session workload (OLTP, OLAP, DBA) (default "UNSPECIFIED")
default['vitess']['vtgate']['mysql_default_workload'] = 'UNSPECIFIED'

# JSON File from which to read LDAP server config
default['vitess']['vtgate']['mysql_ldap_auth_config_file'] = nil

# JSON representation of LDAP server config
default['vitess']['vtgate']['mysql_ldap_auth_config_string'] = nil

# client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default
# "mysql_clear_password")
default['vitess']['vtgate']['mysql_ldap_auth_method'] = 'mysql_clear_password'

# Binds on this address when listening to MySQL binary protocol. Useful to restrict listening to
# 'localhost' only for instance
default['vitess']['vtgate']['mysql_server_bind_address'] = nil

# If set, also listen for MySQL binary protocol connections on this port. (default -1)
default['vitess']['vtgate']['mysql_server_port'] = 15_306

# Delay after which buffered response will flushed to client. (default 100ms)
default['vitess']['vtgate']['mysql_server_flush_delay'] = '100ms'

# mysql query timeout
default['vitess']['vtgate']['mysql_server_query_timeout'] = nil

# connection read timeout
default['vitess']['vtgate']['mysql_server_read_timeout'] = nil

# Reject insecure connections but only if mysql_server_ssl_cert and mysql_server_ssl_key are provided
default['vitess']['vtgate']['mysql_server_require_secure_transport'] = nil

# This option specifies the Unix socket file to use when listening for local connections. By default
# it will be empty and it won't listen to a unix socket
default['vitess']['vtgate']['mysql_server_socket_path'] = nil

# Path to ssl CA for mysql server plugin SSL. If specified, server will require and validate client
# certs
default['vitess']['vtgate']['mysql_server_ssl_ca'] = nil

# Path to the ssl cert for mysql server plugin SSL
default['vitess']['vtgate']['mysql_server_ssl_cert'] = nil

# Path to ssl key for mysql server plugin SSL
default['vitess']['vtgate']['mysql_server_ssl_key'] = nil

# MySQL server version to advertise. (default "5.5.10-Vitess")
default['vitess']['vtgate']['mysql_server_version'] = '5.5.10-Vitess'

# connection write timeout
default['vitess']['vtgate']['mysql_server_write_timeout'] = nil

# Warn if it takes more than the given threshold for a mysql connection to establish
default['vitess']['vtgate']['mysql_slow_connect_warn_threshold'] = nil

# Select tcp, tcp4, or tcp6 to control the socket type. (default "tcp")
default['vitess']['vtgate']['mysql_tcp_version'] = 'tcp'

# Rewrite queries with bind vars. Turn this off if the app itself sends normalized queries with bind
# vars. (default true)
default['vitess']['vtgate']['normalize_queries'] = true

# wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vitess']['vtgate']['onterm_timeout'] = '10s'

# URI of opentsdb /api/put method
default['vitess']['vtgate']['opentsdb_uri'] = nil

# If set, the process will write its pid to the named file, and delete it on graceful shutdown
default['vitess']['vtgate']['pid_file'] = nil

# port for the server
default['vitess']['vtgate']['port'] = 15_001

# Enable HAProxy PROXY protocol on MySQL listener socket
default['vitess']['vtgate']['proxy_protocol'] = nil

# how often try to remove old logs (default 1h0m0s)
default['vitess']['vtgate']['purge_logs_interval'] = '1h0m0s'

# string that must be present in the query for it to be logged
default['vitess']['vtgate']['querylog-filter-tag'] = nil

# format for query logs ("text" or "json") (default "text")
default['vitess']['vtgate']['querylog-format'] = 'text'

# redact full queries and bind variables from debug UI
default['vitess']['vtgate']['redact-debug-ui-queries'] = nil

# time to wait for a remote operation (default 30s)
default['vitess']['vtgate']['remote_operation_timeout'] = '30s'

# retry count (default 2)
default['vitess']['vtgate']['retry-count'] = 2

# the name of a registered security policy to use for controlling access to URLs - empty means allow
# all for anyone (built-in policies: deny-all, read-only)
default['vitess']['vtgate']['security_policy'] = nil

# comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vitess']['vtgate']['service_map'] = nil

# truncate queries in error logs to the given length (default unlimited)
default['vitess']['vtgate']['sql-max-length-errors'] = 0

# truncate queries in debug UIs to the given length (default 512) (default 512)
default['vitess']['vtgate']['sql-max-length-ui'] = 512

# how frequently to refresh the topology for cached entries (default 1s)
default['vitess']['vtgate']['srv_topo_cache_refresh'] = '1s'

# how long to use cached entries for topology (default 1s)
default['vitess']['vtgate']['srv_topo_cache_ttl'] = '1s'

# The name of the registered push-based monitoring/stats backend to use
default['vitess']['vtgate']['stats_backend'] = nil

# List of dimensions to be combined into a single "all" value in exported stats vars
default['vitess']['vtgate']['stats_combine_dimensions'] = nil

# Variables to be dropped from the list of exported variables.
default['vitess']['vtgate']['stats_drop_variables'] = nil

# Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['vtgate']['stats_emit_period'] = '1m0s'

# logs at or above this threshold go to stderr (default 1)
default['vitess']['vtgate']['stderrthreshold'] = 1

# the number of bytes sent from vtgate for each stream call. It's recommended to keep this value in
# sync with vttablet's query-server-config-stream-buffer-size. (default 32768)
default['vitess']['vtgate']['stream_buffer_size'] = 32_768

# Specifies a comma-separated list of 'keyspace|shard_name or keyrange' values to filter the tablets
# to watch
default['vitess']['vtgate']['tablet_filters'] = nil

# the server ca to use to validate servers when connecting
default['vitess']['vtgate']['tablet_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtgate']['tablet_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vtgate']['tablet_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtgate']['tablet_grpc_server_name'] = nil

# how to talk to the vttablets (default "grpc")
default['vitess']['vtgate']['tablet_protocol'] = 'grpc'

# tablet refresh interval (default 1m0s)
default['vitess']['vtgate']['tablet_refresh_interval'] = '1m0s'

# tablet refresh reloads the tablet address/port map from topo in case it changes (default true)
default['vitess']['vtgate']['tablet_refresh_known_tablets'] = true

# wait till connected for specified tablet types during Gateway initialization
default['vitess']['vtgate']['tablet_types_to_wait'] = nil

# format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how
# to customize this. (default "http://{{.GetTabletHostPort}}")
default['vitess']['vtgate']['tablet_url_template'] = 'http://{{.GetTabletHostPort}}'

# time of the long poll for watch queries. Interrupting a watch may wait for up to that time.
# (default 30s)
default['vitess']['vtgate']['topo_consul_watch_poll_duration'] = '30s'

# Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going.
# (default 30)
default['vitess']['vtgate']['topo_etcd_lease_ttl'] = 30

# concurrent topo reads (default 32)
default['vitess']['vtgate']['topo_read_concurrency'] = 32

# auth to use when connecting to the zk topo server, file contents should be <scheme>:<auth>, e.g.,
# digest:user:pass
default['vitess']['vtgate']['topo_zk_auth_file'] = nil

# zk base timeout (see zk.Connect) (default 30s)
default['vitess']['vtgate']['topo_zk_base_timeout'] = '30s'

# maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vitess']['vtgate']['topo_zk_max_concurrency'] = 64

# the server ca to use to validate servers when connecting to the zk topo server
default['vitess']['vtgate']['topo_zk_tls_ca'] = nil

# the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
default['vitess']['vtgate']['topo_zk_tls_cert'] = nil

# the key to use to connect to the zk topo server, enables TLS
default['vitess']['vtgate']['topo_zk_tls_key'] = nil

# tracing service to use (default "noop")
default['vitess']['vtgate']['tracer'] = 'noop'

# sampling rate for the probabilistic jaeger sampler (default 0.1)
default['vitess']['vtgate']['tracing-sampling-rate'] = 0.1

# SINGLE: disallow multi-db transactions, MULTI: allow multi-db transactions with best effort commit,
# TWOPC: allow multi-db transactions with 2pc commit (default "MULTI")
default['vitess']['vtgate']['transaction_mode'] = 'MULTI'

# print binary version
default['vitess']['vtgate']['version'] = nil

# comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['vtgate']['vmodule'] = nil

# List of users authorized to execute vschema ddl operations, or '%' to allow all users
default['vitess']['vtgate']['vschema_ddl_authorized_users'] = nil

# address of a vtctld instance
default['vitess']['vtgate']['vtctld_addr'] = nil

# prevent bind vars from escaping in returned errors
default['vitess']['vtgate']['vtgate-config-terse-errors'] = nil
