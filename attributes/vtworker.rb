# log to standard error as well as files
default['vitess']['vtworker']['alsologtostderr'] = 1

# Idle timeout for app connections (default 1m0s)
default['vitess']['vtworker']['app_idle_timeout'] = '1m0s'

# Size of the connection pool for app connections (default 40)
default['vitess']['vtworker']['app_pool_size'] = 40

# Specifies which implementation to use for creating new backups (builtin or xtrabackup). Restores
# will always be done with whichever engine created a given backup. (default "builtin")
default['vitess']['vtworker']['backup_engine_implementation'] = 'builtin'

# if backup_storage_compress is true, backup_storage_block_size sets the byte size for each block
# while compressing (default is 250000). (default 250000)
default['vitess']['vtworker']['backup_storage_block_size'] = 250_000

# if set, the backup files will be compressed (default is true). Set to false for instance if a
# backup_storage_hook is specified and it compresses the data. (default true)
default['vitess']['vtworker']['backup_storage_compress'] = true

# if set, we send the contents of the backup files through this hook
default['vitess']['vtworker']['backup_storage_hook'] = nil

# which implementation to use for the backup storage feature
default['vitess']['vtworker']['backup_storage_implementation'] = nil

# if backup_storage_compress is true, backup_storage_number_blocks sets the number of blocks that can
# be processed, at once, before the writer blocks, during compression (default is 2). It should be
# equal to the number of CPUs available for compression (default 2)
default['vitess']['vtworker']['backup_storage_number_blocks'] = 2

# the protocol to download binlogs from a vttablet (default "grpc")
default['vitess']['vtworker']['binlog_player_protocol'] = 'grpc'

# cell to pick servers from
default['vitess']['vtworker']['cell'] = nil

# Interval between each status update when vtworker is executing a single command from the command
# line (default 1s)
default['vitess']['vtworker']['command_display_interval'] = '1s'

# JSON File to read the topos/tokens from
default['vitess']['vtworker']['consul_auth_static_file'] = nil

# write cpu profile to file
default['vitess']['vtworker']['cpu_profile'] = nil

# host to send spans to. if empty, no tracing will be done
default['vitess']['vtworker']['datadog-agent-host'] = nil

# port to send spans to. if empty, no tracing will be done
default['vitess']['vtworker']['datadog-agent-port'] = nil

# db credentials file; send SIGHUP to reload this file
default['vitess']['vtworker']['db-credentials-file'] = nil

# db credentials server type (use 'file' for the file implementation) (default "file")
default['vitess']['vtworker']['db-credentials-server'] = 'file'

# Idle timeout for dba connections (default 1m0s)
default['vitess']['vtworker']['dba_idle_timeout'] = '1m0s'

# Size of the connection pool for dba connections (default 20)
default['vitess']['vtworker']['dba_pool_size'] = 20

# if set, do not allow active reparents. Use this to protect a cluster using external reparents
default['vitess']['vtworker']['disable_active_reparents'] = nil

# the replication lag that is considered too high when selecting the minimum num vttablets for
# serving (default 2h0m0s)
default['vitess']['vtworker']['discovery_high_replication_lag_minimum_serving'] = '2h0m0s'

# the replication lag that is considered low enough to be healthy (default 30s)
default['vitess']['vtworker']['discovery_low_replication_lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['vtworker']['emit_stats'] = nil

# Amount of time we should wait before retrying ExecuteFetch calls (default 30s)
default['vitess']['vtworker']['executefetch_retry_time'] = '30s'

# Which auth plugin implementation to use (eg: static)
default['vitess']['vtworker']['grpc_auth_mode'] = nil

# when using grpc_static_auth in the server, this file provides the credentials to use to
# authenticate with server
default['vitess']['vtworker']['grpc_auth_static_client_creds'] = nil

# JSON File to read the users/passwords from
default['vitess']['vtworker']['grpc_auth_static_password_file'] = nil

# ca to use, requires TLS, and enforces client cert check
default['vitess']['vtworker']['grpc_ca'] = nil

# certificate to use, requires grpc_key, enables TLS
default['vitess']['vtworker']['grpc_cert'] = nil

# how to compress gRPC, default: nothing, supported: snappy
default['vitess']['vtworker']['grpc_compression'] = nil

# Enable GRPC tracing
default['vitess']['vtworker']['grpc_enable_tracing'] = nil

# grpc initial connection window size
default['vitess']['vtworker']['grpc_initial_conn_window_size'] = nil

# grpc initial window size
default['vitess']['vtworker']['grpc_initial_window_size'] = nil

# After a duration of this time if the client doesn't see any activity it pings the server to see if
# the transport is still alive. (default 10s)
default['vitess']['vtworker']['grpc_keepalive_time'] = '10s'

# After having pinged for keepalive check, the client waits for a duration of Timeout and if no
# activity is seen even after that the connection is closed. (default 10s)
default['vitess']['vtworker']['grpc_keepalive_timeout'] = '10s'

# key to use, requires grpc_cert, enables TLS
default['vitess']['vtworker']['grpc_key'] = nil

# Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vitess']['vtworker']['grpc_max_connection_age'] = '2562047h47m16.854775807s'

# Additional grace period after grpc_max_connection_age, after which connections are forcibly closed.
# (default 2562047h47m16.854775807s)
default['vitess']['vtworker']['grpc_max_connection_age_grace'] = '2562047h47m16.854775807s'

# Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error
# 'exceeding the max size'. (default 16777216)
default['vitess']['vtworker']['grpc_max_message_size'] = 16_777_216

# Port to listen on for gRPC calls
default['vitess']['vtworker']['grpc_port'] = 15033

# Enable gRPC monitoring with Prometheus
default['vitess']['vtworker']['grpc_prometheus'] = nil

# grpc server initial connection window size
default['vitess']['vtworker']['grpc_server_initial_conn_window_size'] = nil

# grpc server initial window size
default['vitess']['vtworker']['grpc_server_initial_window_size'] = nil

# grpc server minimum keepalive time (default 5m0s)
default['vitess']['vtworker']['grpc_server_keepalive_enforcement_policy_min_time'] = '5m0s'

# grpc server permit client keepalive pings even when there are no active streams (RPCs)
default['vitess']['vtworker']['grpc_server_keepalive_enforcement_policy_permit_without_stream'] = nil

# host and port to send spans to. if empty, no tracing will be done
default['vitess']['vtworker']['jaeger-agent-host'] = nil

# keep logs for this long (using ctime) (zero to keep forever)
default['vitess']['vtworker']['keep_logs'] = nil

# keep logs for this long (using mtime) (zero to keep forever)
default['vitess']['vtworker']['keep_logs_by_mtime'] = nil

# keep running at least this long after SIGTERM before stopping (default 50ms)
default['vitess']['vtworker']['lameduck-period'] = '50ms'

# use the legacy algorithm when selecting the vttablets for serving (default true)
default['vitess']['vtworker']['legacy_replication_lag_algorithm'] = true

# when logging hits line file:N, emit a stack trace
default['vitess']['vtworker']['log_backtrace_at'] = nil

# If non-empty, write log files in this directory
default['vitess']['vtworker']['log_dir'] = nil

# log stack traces for errors
default['vitess']['vtworker']['log_err_stacks'] = nil

# size in bytes at which logs are rotated (glog.MaxSize) (default 1887436800)
default['vitess']['vtworker']['log_rotate_max_size'] = 1_887_436_800

# log to standard error instead of files
default['vitess']['vtworker']['logtostderr'] = nil

# how long to wait in between slave -> connection attempts. Only precise to the second. (default 10s)
default['vitess']['vtworker']['master_connect_retry'] = '10s'

# profile every n bytes allocated (default 524288)
default['vitess']['vtworker']['mem-profile-rate'] = 524_288

# the minimum number of vttablets that will be continue to be used even with low replication lag
# (default 2)
default['vitess']['vtworker']['min_number_serving_vttablets'] = 2

# profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vitess']['vtworker']['mutex-profile-fraction'] = nil

# JSON File to read the users/passwords from
default['vitess']['vtworker']['mysql_auth_server_static_file'] = nil

# JSON representation of the users/passwords config
default['vitess']['vtworker']['mysql_auth_server_static_string'] = nil

# Ticker to reload credentials
default['vitess']['vtworker']['mysql_auth_static_reload_interval'] = nil

# client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default
# "mysql_clear_password")
default['vitess']['vtworker']['mysql_clientcert_auth_method'] = 'mysql_clear_password'

# the protocol to use to talk to the mysqlctl server (default "grpc")
default['vitess']['vtworker']['mysqlctl_client_protocol'] = 'grpc'

# template file to use for generating the my.cnf file during server init
default['vitess']['vtworker']['mysqlctl_mycnf_template'] = nil

# socket file to use for remote mysqlctl actions (empty for local actions)
default['vitess']['vtworker']['mysqlctl_socket'] = nil

# wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vitess']['vtworker']['onterm_timeout'] = '10s'

# URI of opentsdb /api/put method
default['vitess']['vtworker']['opentsdb_uri'] = nil

# If set, the process will write its pid to the named file, and delete it on graceful shutdown
default['vitess']['vtworker']['pid_file'] = nil

# if set force an update to all hostnames and reconnect if changed, defaults to 0 (disabled)
default['vitess']['vtworker']['pool_hostname_resolve_interval'] = nil

# port for the server
default['vitess']['vtworker']['port'] = 15_032

# how often try to remove old logs (default 1h0m0s)
default['vitess']['vtworker']['purge_logs_interval'] = '1h0m0s'

# Amount of time to wait for remote actions (like replication stop, ...) (default 1m0s)
default['vitess']['vtworker']['remote_actions_timeout'] = '1m0s'

# time to wait for a remote operation (default 30s)
default['vitess']['vtworker']['remote_operation_timeout'] = '30s'

# Amount of time we wait before giving up on a retryable action (e.g. write to destination, waiting
# for healthy tablets) (default 2h0m0s)
default['vitess']['vtworker']['retry_duration'] = '2h0m0s'

# the name of a registered security policy to use for controlling access to URLs - empty means allow
# all for anyone (built-in policies: deny-all, read-only)
default['vitess']['vtworker']['security_policy'] = nil

# comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vitess']['vtworker']['service_map'] = nil

# truncate queries in error logs to the given length (default unlimited)
default['vitess']['vtworker']['sql-max-length-errors'] = 0

# truncate queries in debug UIs to the given length (default 512) (default 512)
default['vitess']['vtworker']['sql-max-length-ui'] = 512

# how frequently to refresh the topology for cached entries (default 1s)
default['vitess']['vtworker']['srv_topo_cache_refresh'] = '1s'

# how long to use cached entries for topology (default 1s)
default['vitess']['vtworker']['srv_topo_cache_ttl'] = '1s'

# The name of the registered push-based monitoring/stats backend to use
default['vitess']['vtworker']['stats_backend'] = nil

# List of dimensions to be combined into a single "all" value in exported stats vars
default['vitess']['vtworker']['stats_combine_dimensions'] = nil

# Variables to be dropped from the list of exported variables.
default['vitess']['vtworker']['stats_drop_variables'] = nil

# Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['vtworker']['stats_emit_period'] = '1m0s'

# logs at or above this threshold go to stderr (default 1)
default['vitess']['vtworker']['stderrthreshold'] = 1

# The directory within the vtdataroot to store vttablet/mysql files. Defaults to being generated by
# the tablet uid
default['vitess']['vtworker']['tablet_dir'] = nil

# the server ca to use to validate servers when connecting
default['vitess']['vtworker']['tablet_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtworker']['tablet_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vtworker']['tablet_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtworker']['tablet_grpc_server_name'] = nil

# the server ca to use to validate servers when connecting
default['vitess']['vtworker']['tablet_manager_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtworker']['tablet_manager_grpc_cert'] = nil

# concurrency to use to talk to a vttablet server for performance-sensitive RPCs (like
# ExecuteFetchAs{Dba,AllPrivs,App}) (default 8)
default['vitess']['vtworker']['tablet_manager_grpc_concurrency'] = 8

# the key to use to connect
default['vitess']['vtworker']['tablet_manager_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtworker']['tablet_manager_grpc_server_name'] = nil

# the protocol to use to talk to vttablet (default "grpc")
default['vitess']['vtworker']['tablet_manager_protocol'] = 'grpc'

# how to talk to the vttablets (default "grpc")
default['vitess']['vtworker']['tablet_protocol'] = 'grpc'

# format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how
# to customize this. (default "http://{{.GetTabletHostPort}}")
default['vitess']['vtworker']['tablet_url_template'] = 'http://{{.GetTabletHostPort}}'

# time of the long poll for watch queries. Interrupting a watch may wait for up to that time.
# (default 30s)
default['vitess']['vtworker']['topo_consul_watch_poll_duration'] = '30s'

# Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going.
# (default 30)
default['vitess']['vtworker']['topo_etcd_lease_ttl'] = 30

# auth to use when connecting to the zk topo server, file contents should be <scheme>:<auth>, e.g.,
# digest:user:pass
default['vitess']['vtworker']['topo_zk_auth_file'] = nil

# zk base timeout (see zk.Connect) (default 30s)
default['vitess']['vtworker']['topo_zk_base_timeout'] = '30s'

# maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vitess']['vtworker']['topo_zk_max_concurrency'] = 64

# the server ca to use to validate servers when connecting to the zk topo server
default['vitess']['vtworker']['topo_zk_tls_ca'] = nil

# the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
default['vitess']['vtworker']['topo_zk_tls_cert'] = nil

# the key to use to connect to the zk topo server, enables TLS
default['vitess']['vtworker']['topo_zk_tls_key'] = nil

# tracing service to use (default "noop")
default['vitess']['vtworker']['tracer'] = 'noop'

# sampling rate for the probabilistic jaeger sampler (default 0.1)
default['vitess']['vtworker']['tracing-sampling-rate'] = 0.1

# True iff the workers should use V3-style resharding, which doesn't require a preset sharding key
# column. (default true)
default['vitess']['vtworker']['use_v3_resharding_mode'] = true

# If set, value is set as immediate caller id in the request and used by vttablet for TableACL check
default['vitess']['vtworker']['username'] = nil

# print binary version
default['vitess']['vtworker']['version'] = nil

# comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['vtworker']['vmodule'] = nil

# delay before retrying a failed healthcheck (default 5s)
default['vitess']['vtworker']['vreplication_healthcheck_retry_delay'] = '5s'

# the health check timeout period (default 1m0s)
default['vitess']['vtworker']['vreplication_healthcheck_timeout'] = '1m0s'

# refresh interval for re-reading the topology (default 30s)
default['vitess']['vtworker']['vreplication_healthcheck_topology_refresh'] = '30s'

# delay before retrying a failed binlog connection (default 5s)
default['vitess']['vtworker']['vreplication_retry_delay'] = '5s'

# comma separated list of tablet types used as a source (default "REPLICA")
default['vitess']['vtworker']['vreplication_tablet_type'] = 'REPLICA'

# time to wait before shutting the query service on old RDONLY tablets during MigrateServedTypes
# (default 5s)
default['vitess']['vtworker']['wait_for_drain_sleep_rdonly'] = '5s'

# time to wait before shutting the query service on old REPLICA tablets during MigrateServedTypes
# (default 15s)
default['vitess']['vtworker']['wait_for_drain_sleep_replica'] = '15s'

# maximum time to wait at the start if less than --min_healthy_tablets are available (default 1m0s)
default['vitess']['vtworker']['wait_for_healthy_tablets_timeout'] = '1m0s'

# delay before retrying a failed healthcheck (default 5s)
default['vitess']['vtworker']['worker_healthcheck_retry_delay'] = '5s'

# the health check timeout period (default 1m0s)
default['vitess']['vtworker']['worker_healthcheck_timeout'] = '1m0s'

# refresh interval for re-reading the topology (default 30s)
default['vitess']['vtworker']['worker_healthcheck_topology_refresh'] = '30s'

# flags to pass to xbstream command during restore. These should be space separated and will be added
# to the end of the command. These need to match the ones used for backup e.g. --compress /
# --decompress, --encrypt / --decrypt
default['vitess']['vtworker']['xbstream_restore_flags'] = nil

# flags to pass to backup command. These should be space separated and will be added to the end of
# the command
default['vitess']['vtworker']['xtrabackup_backup_flags'] = nil

# directory location of the xtrabackup executable, e.g., /usr/bin
default['vitess']['vtworker']['xtrabackup_root_path'] = nil

# which mode to use if streaming, valid values are tar and xbstream (default "tar")
default['vitess']['vtworker']['xtrabackup_stream_mode'] = 'tar'

# Size in bytes of each block that gets sent to a given stripe before rotating to the next stripe
# (default 102400)
default['vitess']['vtworker']['xtrabackup_stripe_block_size'] = 102_400

# If greater than 0, use data striping across this many destination files to parallelize data
# transfer and decompression
default['vitess']['vtworker']['xtrabackup_stripes'] = nil
