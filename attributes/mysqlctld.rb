# log to standard error as well as files
default['vitess']['mysqlctld']['alsologtostderr'] = 1

# Idle timeout for app connections (default 1m0s)
default['vitess']['mysqlctld']['app_idle_timeout'] = '1m0s'

# Size of the connection pool for app connections (default 40)
default['vitess']['mysqlctld']['app_pool_size'] = 40

# Specifies which implementation to use for creating new backups (builtin or xtrabackup). Restores
# will always be done with whichever engine created a given backup. (default "builtin")
default['vitess']['mysqlctld']['backup_engine_implementation'] = 'builtin'

# if backup_storage_compress is true, backup_storage_block_size sets the byte size for each block
# while compressing (default is 250000). (default 250000)
default['vitess']['mysqlctld']['backup_storage_block_size'] = 250_000

# if set, the backup files will be compressed (default is true). Set to false for instance if a
# backup_storage_hook is specified and it compresses the data. (default true)
default['vitess']['mysqlctld']['backup_storage_compress'] = true

# if set, we send the contents of the backup files through this hook
default['vitess']['mysqlctld']['backup_storage_hook'] = nil

# which implementation to use for the backup storage feature
default['vitess']['mysqlctld']['backup_storage_implementation'] = nil

# if backup_storage_compress is true, backup_storage_number_blocks sets the number of blocks that can
# be processed, at once, before the writer blocks, during compression (default is 2). It should be
# equal to the number of CPUs available for compression (default 2)
default['vitess']['mysqlctld']['backup_storage_number_blocks'] = 2

# write cpu profile to file
default['vitess']['mysqlctld']['cpu_profile'] = nil

# host to send spans to. if empty, no tracing will be done
default['vitess']['mysqlctld']['datadog-agent-host'] = nil

# port to send spans to. if empty, no tracing will be done
default['vitess']['mysqlctld']['datadog-agent-port'] = nil

# deprecated: use db_charset (default "utf8")
default['vitess']['mysqlctld']['db-config-dba-charset'] = 'utf8'

# deprecated: dbname does not need to be explicitly configured
default['vitess']['mysqlctld']['db-config-dba-dbname'] = nil

# deprecated: use db_flags
default['vitess']['mysqlctld']['db-config-dba-flags'] = nil

# deprecated: use db_host
default['vitess']['mysqlctld']['db-config-dba-host'] = nil

# db dba deprecated: use db_dba_password
default['vitess']['mysqlctld']['db-config-dba-pass'] = nil

# deprecated: use db_port
default['vitess']['mysqlctld']['db-config-dba-port'] = nil

# deprecated: use db_server_name
default['vitess']['mysqlctld']['db-config-dba-server_name'] = nil

# deprecated: use db_ssl_ca
default['vitess']['mysqlctld']['db-config-dba-ssl-ca'] = nil

# deprecated: use db_ssl_ca_path
default['vitess']['mysqlctld']['db-config-dba-ssl-ca-path'] = nil

# deprecated: use db_ssl_cert
default['vitess']['mysqlctld']['db-config-dba-ssl-cert'] = nil

# deprecated: use db_ssl_key
default['vitess']['mysqlctld']['db-config-dba-ssl-key'] = nil

# deprecated: use db_dba_user (default "vt_dba")
default['vitess']['mysqlctld']['db-config-dba-uname'] = 'vt_dba'

# deprecated: use db_socket
default['vitess']['mysqlctld']['db-config-dba-unixsocket'] = nil

# db credentials file; send SIGHUP to reload this file
default['vitess']['mysqlctld']['db-credentials-file'] = nil

# db credentials server type (use 'file' for the file implementation) (default "file")
default['vitess']['mysqlctld']['db-credentials-server'] = 'file'

# Character set. Only utf8 or latin1 based character sets are supported
default['vitess']['mysqlctld']['db_charset'] = nil

# db dba password
default['vitess']['mysqlctld']['db_dba_password'] = nil

# Set this flag to false to make the dba connection to not use ssl (default true)
default['vitess']['mysqlctld']['db_dba_use_ssl'] = true

# db dba user userKey (default "vt_dba")
default['vitess']['mysqlctld']['db_dba_user'] = 'vt_dba'

# Flag values as defined by MySQL
default['vitess']['mysqlctld']['db_flags'] = nil

# The host name for the tcp connection
default['vitess']['mysqlctld']['db_host'] = nil

# tcp port
default['vitess']['mysqlctld']['db_port'] = nil

# server name of the DB we are connecting to
default['vitess']['mysqlctld']['db_server_name'] = nil

# The unix socket to connect on. If this is specified, host and port will not be used
default['vitess']['mysqlctld']['db_socket'] = nil

# connection ssl ca
default['vitess']['mysqlctld']['db_ssl_ca'] = nil

# connection ssl ca path
default['vitess']['mysqlctld']['db_ssl_ca_path'] = nil

# connection ssl certificate
default['vitess']['mysqlctld']['db_ssl_cert'] = nil

# connection ssl key
default['vitess']['mysqlctld']['db_ssl_key'] = nil

# Idle timeout for dba connections (default 1m0s)
default['vitess']['mysqlctld']['dba_idle_timeout'] = '1m0s'

# Size of the connection pool for dba connections (default 20)
default['vitess']['mysqlctld']['dba_pool_size'] = 20

# if set, do not allow active reparents. Use this to protect a cluster using external reparents
default['vitess']['mysqlctld']['disable_active_reparents'] = nil

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['mysqlctld']['emit_stats'] = nil

# Which auth plugin implementation to use (eg: static)
default['vitess']['mysqlctld']['grpc_auth_mode'] = nil

# when using grpc_static_auth in the server, this file provides the credentials to use to
# authenticate with server
default['vitess']['mysqlctld']['grpc_auth_static_client_creds'] = nil

# JSON File to read the users/passwords from
default['vitess']['mysqlctld']['grpc_auth_static_password_file'] = nil

# ca to use, requires TLS, and enforces client cert check
default['vitess']['mysqlctld']['grpc_ca'] = nil

# certificate to use, requires grpc_key, enables TLS
default['vitess']['mysqlctld']['grpc_cert'] = nil

# how to compress gRPC, default: nothing, supported: snappy
default['vitess']['mysqlctld']['grpc_compression'] = nil

# Enable GRPC tracing
default['vitess']['mysqlctld']['grpc_enable_tracing'] = nil

# grpc initial connection window size
default['vitess']['mysqlctld']['grpc_initial_conn_window_size'] = nil

# grpc initial window size
default['vitess']['mysqlctld']['grpc_initial_window_size'] = nil

# After a duration of this time if the client doesn't see any activity it pings the server to see if
# the transport is still alive. (default 10s)
default['vitess']['mysqlctld']['grpc_keepalive_time'] = '10s'

# After having pinged for keepalive check, the client waits for a duration of Timeout and if no
# activity is seen even after that the connection is closed. (default 10s)
default['vitess']['mysqlctld']['grpc_keepalive_timeout'] = '10s'

# key to use, requires grpc_cert, enables TLS
default['vitess']['mysqlctld']['grpc_key'] = nil

# Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vitess']['mysqlctld']['grpc_max_connection_age'] = '2562047h47m16.854775807s'

# Additional grace period after grpc_max_connection_age, after which connections are forcibly closed.
# (default 2562047h47m16.854775807s)
default['vitess']['mysqlctld']['grpc_max_connection_age_grace'] = '2562047h47m16.854775807s'

# Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error
# 'exceeding the max size'. (default 16777216)
default['vitess']['mysqlctld']['grpc_max_message_size'] = 16_777_216

# Port to listen on for gRPC calls
default['vitess']['mysqlctld']['grpc_port'] = nil

# Enable gRPC monitoring with Prometheus
default['vitess']['mysqlctld']['grpc_prometheus'] = nil

# grpc server initial connection window size
default['vitess']['mysqlctld']['grpc_server_initial_conn_window_size'] = nil

# grpc server initial window size
default['vitess']['mysqlctld']['grpc_server_initial_window_size'] = nil

# grpc server minimum keepalive time (default 5m0s)
default['vitess']['mysqlctld']['grpc_server_keepalive_enforcement_policy_min_time'] = '5m0s'

# grpc server permit client keepalive pings even when there are no active streams (RPCs)
default['vitess']['mysqlctld']['grpc_server_keepalive_enforcement_policy_permit_without_stream'] = nil

# path to .sql file to run after mysql_install_db
default['vitess']['mysqlctld']['init_db_sql_file'] = nil

# host and port to send spans to. if empty, no tracing will be done
default['vitess']['mysqlctld']['jaeger-agent-host'] = nil

# keep logs for this long (using ctime) (zero to keep forever)
default['vitess']['mysqlctld']['keep_logs'] = nil

# keep logs for this long (using mtime) (zero to keep forever)
default['vitess']['mysqlctld']['keep_logs_by_mtime'] = nil

# keep running at least this long after SIGTERM before stopping (default 50ms)
default['vitess']['mysqlctld']['lameduck-period'] = '50ms'

# when logging hits line file:N, emit a stack trace
default['vitess']['mysqlctld']['log_backtrace_at'] = nil

# If non-empty, write log files in this directory
default['vitess']['mysqlctld']['log_dir'] = nil

# log stack traces for errors
default['vitess']['mysqlctld']['log_err_stacks'] = nil

# size in bytes at which logs are rotated (glog.MaxSize) (default 1887436800)
default['vitess']['mysqlctld']['log_rotate_max_size'] = 1_887_436_800

# log to standard error instead of files
default['vitess']['mysqlctld']['logtostderr'] = nil

# how long to wait in between slave -> connection attempts. Only precise to the second. (default 10s)
default['vitess']['mysqlctld']['master_connect_retry'] = '10s'

# profile every n bytes allocated (default 524288)
default['vitess']['mysqlctld']['mem-profile-rate'] = 524_288

# profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vitess']['mysqlctld']['mutex-profile-fraction'] = nil

# JSON File to read the users/passwords from
default['vitess']['mysqlctld']['mysql_auth_server_static_file'] = nil

# JSON representation of the users/passwords config
default['vitess']['mysqlctld']['mysql_auth_server_static_string'] = nil

# Ticker to reload credentials
default['vitess']['mysqlctld']['mysql_auth_static_reload_interval'] = nil

# client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default
# "mysql_clear_password")
default['vitess']['mysqlctld']['mysql_clientcert_auth_method'] = 'mysql_clear_password'

# mysql port (default 3306)
default['vitess']['mysqlctld']['mysql_port'] = 3_306

# path to the mysql socket
default['vitess']['mysqlctld']['mysql_socket'] = nil

# the protocol to use to talk to the mysqlctl server (default "grpc")
default['vitess']['mysqlctld']['mysqlctl_client_protocol'] = 'grpc'

# template file to use for generating the my.cnf file during server init
default['vitess']['mysqlctld']['mysqlctl_mycnf_template'] = nil

# socket file to use for remote mysqlctl actions (empty for local actions)
default['vitess']['mysqlctld']['mysqlctl_socket'] = nil

# wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vitess']['mysqlctld']['onterm_timeout'] = '10s'

# If set, the process will write its pid to the named file, and delete it on graceful shutdown
default['vitess']['mysqlctld']['pid_file'] = nil

# if set force an update to all hostnames and reconnect if changed, defaults to 0 (disabled)
default['vitess']['mysqlctld']['pool_hostname_resolve_interval'] = nil

# port for the server
default['vitess']['mysqlctld']['port'] = nil

# how often try to remove old logs (default 1h0m0s)
default['vitess']['mysqlctld']['purge_logs_interval'] = '1h0m0s'

# time to wait for a remote operation (default 30s)
default['vitess']['mysqlctld']['remote_operation_timeout'] = '30s'

# the name of a registered security policy to use for controlling access to URLs - empty means allow
# all for anyone (built-in policies: deny-all, read-only)
default['vitess']['mysqlctld']['security_policy'] = nil

# comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vitess']['mysqlctld']['service_map'] = nil

# Local unix socket file to listen on
default['vitess']['mysqlctld']['socket_file'] = nil

# truncate queries in error logs to the given length (default unlimited)
default['vitess']['mysqlctld']['sql-max-length-errors'] = 0

# truncate queries in debug UIs to the given length (default 512) (default 512)
default['vitess']['mysqlctld']['sql-max-length-ui'] = 512

# The name of the registered push-based monitoring/stats backend to use
default['vitess']['mysqlctld']['stats_backend'] = nil

# List of dimensions to be combined into a single "all" value in exported stats vars
default['vitess']['mysqlctld']['stats_combine_dimensions'] = nil

# Variables to be dropped from the list of exported variables.
default['vitess']['mysqlctld']['stats_drop_variables'] = nil

# Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['mysqlctld']['stats_emit_period'] = '1m0s'

# logs at or above this threshold go to stderr (default 1)
default['vitess']['mysqlctld']['stderrthreshold'] = 1

# The directory within the vtdataroot to store vttablet/mysql files. Defaults to being generated by
# the tablet uid
default['vitess']['mysqlctld']['tablet_dir'] = nil

# the protocol to use to talk to vttablet (default "grpc")
default['vitess']['mysqlctld']['tablet_manager_protocol'] = 'grpc'

# tablet uid (default 41983)
default['vitess']['mysqlctld']['tablet_uid'] = 41_983

# tracing service to use (default "noop")
default['vitess']['mysqlctld']['tracer'] = 'noop'

# sampling rate for the probabilistic jaeger sampler (default 0.1)
default['vitess']['mysqlctld']['tracing-sampling-rate'] = 0.1

# print binary version
default['vitess']['mysqlctld']['version'] = nil

# comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['mysqlctld']['vmodule'] = nil

# how long to wait for mysqld startup or shutdown (default 5m0s)
default['vitess']['mysqlctld']['wait_time'] = '5m0s'

# flags to pass to xbstream command during restore. These should be space separated and will be added
# to the end of the command. These need to match the ones used for backup e.g. --compress /
# --decompress, --encrypt / --decrypt
default['vitess']['mysqlctld']['xbstream_restore_flags'] = nil

# flags to pass to backup command. These should be space separated and will be added to the end of
# the command
default['vitess']['mysqlctld']['xtrabackup_backup_flags'] = nil

# directory location of the xtrabackup executable, e.g., /usr/bin
default['vitess']['mysqlctld']['xtrabackup_root_path'] = nil

# which mode to use if streaming, valid values are tar and xbstream (default "tar")
default['vitess']['mysqlctld']['xtrabackup_stream_mode'] = 'tar'

# Size in bytes of each block that gets sent to a given stripe before rotating to the next stripe
# (default 102400)
default['vitess']['mysqlctld']['xtrabackup_stripe_block_size'] = 102_400

# If greater than 0, use data striping across this many destination files to parallelize data
# transfer and decompression
default['vitess']['mysqlctld']['xtrabackup_stripes'] = nil
