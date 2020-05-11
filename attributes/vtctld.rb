# time to wait for an action before resorting to force (default 2m0s)
default['vitess']['vtctld']['action_timeout'] = '2m0s'

# log to standard error as well as files
default['vitess']['vtctld']['alsologtostderr'] = 1

# Idle timeout for app connections (default 1m0s)
default['vitess']['vtctld']['app_idle_timeout'] = '1m0s'

# Size of the connection pool for app connections (default 40)
default['vitess']['vtctld']['app_pool_size'] = 40

# Specifies which implementation to use for creating new backups (builtin or xtrabackup). Restores
# will always be done with whichever engine created a given backup. (default "builtin")
default['vitess']['vtctld']['backup_engine_implementation'] = 'builtin'

# if backup_storage_compress is true, backup_storage_block_size sets the byte size for each block
# while compressing (default is 250000). (default 250000)
default['vitess']['vtctld']['backup_storage_block_size'] = 250_000

# if set, the backup files will be compressed (default is true). Set to false for instance if a
# backup_storage_hook is specified and it compresses the data. (default true)
default['vitess']['vtctld']['backup_storage_compress'] = true

# if set, we send the contents of the backup files through this hook
default['vitess']['vtctld']['backup_storage_hook'] = nil

# which implementation to use for the backup storage feature
default['vitess']['vtctld']['backup_storage_implementation'] = nil

# if backup_storage_compress is true, backup_storage_number_blocks sets the number of blocks that can
# be processed, at once, before the writer blocks, during compression (default is 2). It should be
# equal to the number of CPUs available for compression (default 2)
default['vitess']['vtctld']['backup_storage_number_blocks'] = 2

# the protocol to download binlogs from a vttablet (default "grpc")
default['vitess']['vtctld']['binlog_player_protocol'] = 'grpc'

# cell to use
default['vitess']['vtctld']['cell'] = nil

# Path to JSON config file for ceph backup storage (default "ceph_backup_config.json")
default['vitess']['vtctld']['ceph_backup_storage_config'] = 'ceph_backup_config.json'

# JSON File to read the topos/tokens from
default['vitess']['vtctld']['consul_auth_static_file'] = nil

# write cpu profile to file
default['vitess']['vtctld']['cpu_profile'] = nil

# host to send spans to. if empty, no tracing will be done
default['vitess']['vtctld']['datadog-agent-host'] = nil

# port to send spans to. if empty, no tracing will be done
default['vitess']['vtctld']['datadog-agent-port'] = nil

# db credentials file; send SIGHUP to reload this file
default['vitess']['vtctld']['db-credentials-file'] = nil

# db credentials server type (use 'file' for the file implementation) (default "file")
default['vitess']['vtctld']['db-credentials-server'] = 'file'

# Idle timeout for dba connections (default 1m0s)
default['vitess']['vtctld']['dba_idle_timeout'] = '1m0s'

# Size of the connection pool for dba connections (default 20)
default['vitess']['vtctld']['dba_pool_size'] = 20

# if set, do not allow active reparents. Use this to protect a cluster using external reparents
default['vitess']['vtctld']['disable_active_reparents'] = nil

# the replication lag that is considered too high when selecting the minimum num vttablets for
# serving (default 2h0m0s)
default['vitess']['vtctld']['discovery_high_replication_lag_minimum_serving'] = '2h0m0s'

# the replication lag that is considered low enough to be healthy (default 30s)
default['vitess']['vtctld']['discovery_low_replication_lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['vtctld']['emit_stats'] = nil

# if set, allows vtgate and vttablet queries. May have security implications, as the queries will be
# run from this process
default['vitess']['vtctld']['enable_queries'] = nil

# Required for the Realtime Stats view. If set, vtctld will maintain a streaming RPC to each tablet
# (in all cells) to gather the realtime health stats
default['vitess']['vtctld']['enable_realtime_stats'] = nil

# root directory for the file backup storage
default['vitess']['vtctld']['file_backup_storage_root'] = nil

# Google Cloud Storage bucket to use for backups
default['vitess']['vtctld']['gcs_backup_storage_bucket'] = nil

# root prefix for all backup-related object names
default['vitess']['vtctld']['gcs_backup_storage_root'] = nil

# Which auth plugin implementation to use (eg: static)
default['vitess']['vtctld']['grpc_auth_mode'] = nil

# when using grpc_static_auth in the server, this file provides the credentials to use to
# authenticate with server
default['vitess']['vtctld']['grpc_auth_static_client_creds'] = nil

# JSON File to read the users/passwords from
default['vitess']['vtctld']['grpc_auth_static_password_file'] = nil

# ca to use, requires TLS, and enforces client cert check
default['vitess']['vtctld']['grpc_ca'] = nil

# certificate to use, requires grpc_key, enables TLS
default['vitess']['vtctld']['grpc_cert'] = nil

# how to compress gRPC, default: nothing, supported: snappy
default['vitess']['vtctld']['grpc_compression'] = nil

# Enable GRPC tracing
default['vitess']['vtctld']['grpc_enable_tracing'] = nil

# grpc initial connection window size
default['vitess']['vtctld']['grpc_initial_conn_window_size'] = nil

# grpc initial window size
default['vitess']['vtctld']['grpc_initial_window_size'] = nil

# After a duration of this time if the client doesn't see any activity it pings the server to see if
# the transport is still alive. (default 10s)
default['vitess']['vtctld']['grpc_keepalive_time'] = '10s'

# After having pinged for keepalive check, the client waits for a duration of Timeout and if no
# activity is seen even after that the connection is closed. (default 10s)
default['vitess']['vtctld']['grpc_keepalive_timeout'] = '10s'

# key to use, requires grpc_cert, enables TLS
default['vitess']['vtctld']['grpc_key'] = nil

# Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vitess']['vtctld']['grpc_max_connection_age'] = '2562047h47m16.854775807s'

# Additional grace period after grpc_max_connection_age, after which connections are forcibly closed.
# (default 2562047h47m16.854775807s)
default['vitess']['vtctld']['grpc_max_connection_age_grace'] = '2562047h47m16.854775807s'

# Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error
# 'exceeding the max size'. (default 16777216)
default['vitess']['vtctld']['grpc_max_message_size'] = 16_777_216

# Port to listen on for gRPC calls
default['vitess']['vtctld']['grpc_port'] = 15999

# Enable gRPC monitoring with Prometheus
default['vitess']['vtctld']['grpc_prometheus'] = nil

# grpc server initial connection window size
default['vitess']['vtctld']['grpc_server_initial_conn_window_size'] = nil

# grpc server initial window size
default['vitess']['vtctld']['grpc_server_initial_window_size'] = nil

# grpc server minimum keepalive time (default 5m0s)
default['vitess']['vtctld']['grpc_server_keepalive_enforcement_policy_min_time'] = '5m0s'

# grpc server permit client keepalive pings even when there are no active streams (RPCs)
default['vitess']['vtctld']['grpc_server_keepalive_enforcement_policy_permit_without_stream'] = nil

# host and port to send spans to. if empty, no tracing will be done
default['vitess']['vtctld']['jaeger-agent-host'] = nil

# keep logs for this long (using ctime) (zero to keep forever)
default['vitess']['vtctld']['keep_logs'] = nil

# keep logs for this long (using mtime) (zero to keep forever)
default['vitess']['vtctld']['keep_logs_by_mtime'] = nil

# keep running at least this long after SIGTERM before stopping (default 50ms)
default['vitess']['vtctld']['lameduck-period'] = '50ms'

# use the legacy algorithm when selecting the vttablets for serving (default true)
default['vitess']['vtctld']['legacy_replication_lag_algorithm'] = true

# when logging hits line file:N, emit a stack trace
default['vitess']['vtctld']['log_backtrace_at'] = nil

# If non-empty, write log files in this directory
default['vitess']['vtctld']['log_dir'] = nil

# log stack traces for errors
default['vitess']['vtctld']['log_err_stacks'] = nil

# size in bytes at which logs are rotated (glog.MaxSize) (default 1887436800)
default['vitess']['vtctld']['log_rotate_max_size'] = 1_887_436_800

# log to standard error instead of files
default['vitess']['vtctld']['logtostderr'] = nil

# how long to wait in between slave -> connection attempts. Only precise to the second. (default 10s)
default['vitess']['vtctld']['master_connect_retry'] = '10s'

# profile every n bytes allocated (default 524288)
default['vitess']['vtctld']['mem-profile-rate'] = 524_288

# the minimum number of vttablets that will be continue to be used even with low replication lag
# (default 2)
default['vitess']['vtctld']['min_number_serving_vttablets'] = 2

# profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vitess']['vtctld']['mutex-profile-fraction'] = nil

# JSON File to read the users/passwords from
default['vitess']['vtctld']['mysql_auth_server_static_file'] = nil

# JSON representation of the users/passwords config
default['vitess']['vtctld']['mysql_auth_server_static_string'] = nil

# Ticker to reload credentials
default['vitess']['vtctld']['mysql_auth_static_reload_interval'] = nil

# client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default
# "mysql_clear_password")
default['vitess']['vtctld']['mysql_clientcert_auth_method'] = 'mysql_clear_password'

# the protocol to use to talk to the mysqlctl server (default "grpc")
default['vitess']['vtctld']['mysqlctl_client_protocol'] = 'grpc'

# template file to use for generating the my.cnf file during server init
default['vitess']['vtctld']['mysqlctl_mycnf_template'] = nil

# socket file to use for remote mysqlctl actions (empty for local actions)
default['vitess']['vtctld']['mysqlctl_socket'] = nil

# wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vitess']['vtctld']['onterm_timeout'] = '10s'

# URI of opentsdb /api/put method
default['vitess']['vtctld']['opentsdb_uri'] = nil

# If set, the process will write its pid to the named file, and delete it on graceful shutdown
default['vitess']['vtctld']['pid_file'] = nil

# if set force an update to all hostnames and reconnect if changed, defaults to 0 (disabled)
default['vitess']['vtctld']['pool_hostname_resolve_interval'] = nil

# port for the server
default['vitess']['vtctld']['port'] = 15_000

# Setting this true will make vtctld proxy the tablet status instead of redirecting to them
default['vitess']['vtctld']['proxy_tablets'] = nil

# how often try to remove old logs (default 1h0m0s)
default['vitess']['vtctld']['purge_logs_interval'] = '1h0m0s'

# time to wait for a remote operation (default 30s)
default['vitess']['vtctld']['remote_operation_timeout'] = '30s'

# endpoint of the S3 backend (region must be provided)
default['vitess']['vtctld']['s3_backup_aws_endpoint'] = nil

# AWS region to use (default "us-east-1")
default['vitess']['vtctld']['s3_backup_aws_region'] = 'us-east-1'

# force the s3 path style
default['vitess']['vtctld']['s3_backup_force_path_style'] = nil

# determine the S3 loglevel to use from LogOff, LogDebug, LogDebugWithSigning, LogDebugWithHTTPBody,
# LogDebugWithRequestRetries, LogDebugWithRequestErrors (default "LogOff")
default['vitess']['vtctld']['s3_backup_log_level'] = 'LogOff'

# server-side encryption algorithm (e.g., AES256, aws:kms)
default['vitess']['vtctld']['s3_backup_server_side_encryption'] = nil

# S3 bucket to use for backups
default['vitess']['vtctld']['s3_backup_storage_bucket'] = nil

# root prefix for all backup-related object names
default['vitess']['vtctld']['s3_backup_storage_root'] = nil

# skip the 'certificate is valid' check for SSL connections
default['vitess']['vtctld']['s3_backup_tls_skip_verify_cert'] = nil

# this value decides how often we check schema change dir, in seconds (default 60)
default['vitess']['vtctld']['schema_change_check_interval'] = 60

# schema change controller is responsible for finding schema changes and responding to schema change
# events
default['vitess']['vtctld']['schema_change_controller'] = nil

# directory contains schema changes for all keyspaces. Each keyspace has its own directory and schema
# changes are expected to live in '$KEYSPACE/input' dir. e.g. test_keyspace/input/*sql, each sql file
# represents a schema change
default['vitess']['vtctld']['schema_change_dir'] = nil

# how long to wait for slaves to receive the schema change (default 10s)
default['vitess']['vtctld']['schema_change_slave_timeout'] = '10s'

# The user who submits this schema change
default['vitess']['vtctld']['schema_change_user'] = nil

# timeout for SQL queries used to save and retrieve meta information for schema swap process (default
# 30s)
default['vitess']['vtctld']['schema_swap_admin_query_timeout'] = '30s'

# number of simultaneous compression/checksum jobs to run for seed backup during schema swap (default
# 4)
default['vitess']['vtctld']['schema_swap_backup_concurrency'] = 4

# time to wait after a retryable error happened in the schema swap process (default 1m0s)
default['vitess']['vtctld']['schema_swap_delay_between_errors'] = '1m0s'

# timeout to wait for slaves when doing reparent during schema swap (default 30s)
default['vitess']['vtctld']['schema_swap_reparent_timeout'] = '30s'

# the name of a registered security policy to use for controlling access to URLs - empty means allow
# all for anyone (built-in policies: deny-all, read-only)
default['vitess']['vtctld']['security_policy'] = nil

# comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vitess']['vtctld']['service_map'] = nil

# truncate queries in error logs to the given length (default unlimited)
default['vitess']['vtctld']['sql-max-length-errors'] = 0

# truncate queries in debug UIs to the given length (default 512) (default 512)
default['vitess']['vtctld']['sql-max-length-ui'] = 512

# how frequently to refresh the topology for cached entries (default 1s)
default['vitess']['vtctld']['srv_topo_cache_refresh'] = '1s'

# how long to use cached entries for topology (default 1s)
default['vitess']['vtctld']['srv_topo_cache_ttl'] = '1s'

# The name of the registered push-based monitoring/stats backend to use
default['vitess']['vtctld']['stats_backend'] = nil

# List of dimensions to be combined into a single "all" value in exported stats vars
default['vitess']['vtctld']['stats_combine_dimensions'] = nil

# Variables to be dropped from the list of exported variables.
default['vitess']['vtctld']['stats_drop_variables'] = nil

# Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['vtctld']['stats_emit_period'] = '1m0s'

# logs at or above this threshold go to stderr (default 1)
default['vitess']['vtctld']['stderrthreshold'] = 1

# The directory within the vtdataroot to store vttablet/mysql files. Defaults to being generated by
# the tablet uid
default['vitess']['vtctld']['tablet_dir'] = nil

# the server ca to use to validate servers when connecting
default['vitess']['vtctld']['tablet_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtctld']['tablet_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vtctld']['tablet_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtctld']['tablet_grpc_server_name'] = nil

# close streaming tablet health connection if there are no requests for this long (default 5m0s)
default['vitess']['vtctld']['tablet_health_keep_alive'] = '5m0s'

# the server ca to use to validate servers when connecting
default['vitess']['vtctld']['tablet_manager_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtctld']['tablet_manager_grpc_cert'] = nil

# concurrency to use to talk to a vttablet server for performance-sensitive RPCs (like
# ExecuteFetchAs{Dba,AllPrivs,App}) (default 8)
default['vitess']['vtctld']['tablet_manager_grpc_concurrency'] = 8

# the key to use to connect
default['vitess']['vtctld']['tablet_manager_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtctld']['tablet_manager_grpc_server_name'] = nil

# the protocol to use to talk to vttablet (default "grpc")
default['vitess']['vtctld']['tablet_manager_protocol'] = 'grpc'

# how to talk to the vttablets (default "grpc")
default['vitess']['vtctld']['tablet_protocol'] = 'grpc'

# format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how
# to customize this. (default "http://{{.GetTabletHostPort}}")
default['vitess']['vtctld']['tablet_url_template'] = 'http://{{.GetTabletHostPort}}'

# the server ca to use to validate servers when connecting
default['vitess']['vtctld']['throttler_client_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtctld']['throttler_client_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vtctld']['throttler_client_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtctld']['throttler_client_grpc_server_name'] = nil

# the protocol to use to talk to the integrated throttler service (default "grpc")
default['vitess']['vtctld']['throttler_client_protocol'] = 'grpc'

# time of the long poll for watch queries. Interrupting a watch may wait for up to that time.
# (default 30s)
default['vitess']['vtctld']['topo_consul_watch_poll_duration'] = '30s'

# Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going.
# (default 30)
default['vitess']['vtctld']['topo_etcd_lease_ttl'] = 30

# auth to use when connecting to the zk topo server, file contents should be <scheme>:<auth>, e.g.,
# digest:user:pass
default['vitess']['vtctld']['topo_zk_auth_file'] = nil

# zk base timeout (see zk.Connect) (default 30s)
default['vitess']['vtctld']['topo_zk_base_timeout'] = '30s'

# maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vitess']['vtctld']['topo_zk_max_concurrency'] = 64

# the server ca to use to validate servers when connecting to the zk topo server
default['vitess']['vtctld']['topo_zk_tls_ca'] = nil

# the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
default['vitess']['vtctld']['topo_zk_tls_cert'] = nil

# the key to use to connect to the zk topo server, enables TLS
default['vitess']['vtctld']['topo_zk_tls_key'] = nil

# tracing service to use (default "noop")
default['vitess']['vtctld']['tracer'] = 'noop'

# sampling rate for the probabilistic jaeger sampler (default 0.1)
default['vitess']['vtctld']['tracing-sampling-rate'] = 0.1

# print binary version
default['vitess']['vtctld']['version'] = nil

# comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['vtctld']['vmodule'] = nil

# delay before retrying a failed healthcheck (default 5s)
default['vitess']['vtctld']['vreplication_healthcheck_retry_delay'] = '5s'

# the health check timeout period (default 1m0s)
default['vitess']['vtctld']['vreplication_healthcheck_timeout'] = '1m0s'

# refresh interval for re-reading the topology (default 30s)
default['vitess']['vtctld']['vreplication_healthcheck_topology_refresh'] = '30s'

# delay before retrying a failed binlog connection (default 5s)
default['vitess']['vtctld']['vreplication_retry_delay'] = '5s'

# comma separated list of tablet types used as a source (default "REPLICA")
default['vitess']['vtctld']['vreplication_tablet_type'] = 'REPLICA'

# the protocol to use to talk to the vtctl server (default "grpc")
default['vitess']['vtctld']['vtctl_client_protocol'] = 'grpc'

# delay before retrying a failed healthcheck (default 5s)
default['vitess']['vtctld']['vtctl_healthcheck_retry_delay'] = '5s'

# the health check timeout period (default 1m0s)
default['vitess']['vtctld']['vtctl_healthcheck_timeout'] = '1m0s'

# refresh interval for re-reading the topology (default 30s)
default['vitess']['vtctld']['vtctl_healthcheck_topology_refresh'] = '30s'

# Controls the display of the CRUD topology actions in the vtctld UI. (default true)
default['vitess']['vtctld']['vtctld_show_topology_crud'] = true

# the server ca to use to validate servers when connecting
default['vitess']['vtctld']['vtgate_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtctld']['vtgate_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vtctld']['vtgate_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtctld']['vtgate_grpc_server_name'] = nil

# how to talk to vtgate (default "grpc")
default['vitess']['vtctld']['vtgate_protocol'] = 'grpc'

# the server ca to use to validate servers when connecting
default['vitess']['vtctld']['vtworker_client_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vtctld']['vtworker_client_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vtctld']['vtworker_client_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vtctld']['vtworker_client_grpc_server_name'] = nil

# the protocol to use to talk to the vtworker server (default "grpc")
default['vitess']['vtctld']['vtworker_client_protocol'] = 'grpc'

# time to wait before shutting the query service on old RDONLY tablets during MigrateServedTypes
# (default 5s)
default['vitess']['vtctld']['wait_for_drain_sleep_rdonly'] = '5s'

# time to wait before shutting the query service on old REPLICA tablets during MigrateServedTypes
# (default 15s)
default['vitess']['vtctld']['wait_for_drain_sleep_replica'] = '15s'

# comma separated list of workflow types to disable
default['vitess']['vtctld']['workflow_manager_disable'] = nil

# Initialize the workflow manager in this vtctld instance
default['vitess']['vtctld']['workflow_manager_init'] = nil

# if specified, will use a topology server-based master election to ensure only one workflow manager
# is active at a time
default['vitess']['vtctld']['workflow_manager_use_election'] = nil

# flags to pass to xbstream command during restore. These should be space separated and will be added
# to the end of the command. These need to match the ones used for backup e.g. --compress /
# --decompress, --encrypt / --decrypt
default['vitess']['vtctld']['xbstream_restore_flags'] = nil

# flags to pass to backup command. These should be space separated and will be added to the end of
# the command
default['vitess']['vtctld']['xtrabackup_backup_flags'] = nil

# directory location of the xtrabackup executable, e.g., /usr/bin
default['vitess']['vtctld']['xtrabackup_root_path'] = nil

# which mode to use if streaming, valid values are tar and xbstream (default "tar")
default['vitess']['vtctld']['xtrabackup_stream_mode'] = 'tar'

# Size in bytes of each block that gets sent to a given stripe before rotating to the next stripe
# (default 102400)
default['vitess']['vtctld']['xtrabackup_stripe_block_size'] = 102_400

# If greater than 0, use data striping across this many destination files to parallelize data
# transfer and decompression
default['vitess']['vtctld']['xtrabackup_stripes'] = nil
