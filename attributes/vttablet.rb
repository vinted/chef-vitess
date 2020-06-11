# log to standard error as well as files
default['vitess']['vttablet']['alsologtostderr'] = 1

# Idle timeout for app connections (default 1m0s)
default['vitess']['vttablet']['app_idle_timeout'] = '1m0s'

# Size of the connection pool for app connections (default 40)
default['vitess']['vttablet']['app_pool_size'] = 40

# Specifies which implementation to use for creating new backups (builtin or xtrabackup). Restores
# will always be done with whichever engine created a given backup. (default "builtin")
default['vitess']['vttablet']['backup_engine_implementation'] = 'builtin'

# if backup_storage_compress is true, backup_storage_block_size sets the byte size for each block
# while compressing (default is 250000). (default 250000)
default['vitess']['vttablet']['backup_storage_block_size'] = 250_000

# if set, the backup files will be compressed (default is true). Set to false for instance if a
# backup_storage_hook is specified and it compresses the data. (default true)
default['vitess']['vttablet']['backup_storage_compress'] = true

# if set, we send the contents of the backup files through this hook
default['vitess']['vttablet']['backup_storage_hook'] = nil

# which implementation to use for the backup storage feature
default['vitess']['vttablet']['backup_storage_implementation'] = nil

# if backup_storage_compress is true, backup_storage_number_blocks sets the number of blocks that can
# be processed, at once, before the writer blocks, during compression (default is 2). It should be
# equal to the number of CPUs available for compression (default 2)
default['vitess']['vttablet']['backup_storage_number_blocks'] = 2

# the server ca to use to validate servers when connecting
default['vitess']['vttablet']['binlog_player_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vttablet']['binlog_player_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vttablet']['binlog_player_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vttablet']['binlog_player_grpc_server_name'] = nil

# the protocol to download binlogs from a vttablet (default "grpc")
default['vitess']['vttablet']['binlog_player_protocol'] = 'grpc'

# True iff the binlog streamer should use V3-style sharding, which doesn't require a preset sharding
# key column. (default true)
default['vitess']['vttablet']['binlog_use_v3_resharding_mode'] = true

# Path to JSON config file for ceph backup storage (default "ceph_backup_config.json")
default['vitess']['vttablet']['ceph_backup_storage_config'] = 'ceph_backup_config.json'

# JSON File to read the topos/tokens from
default['vitess']['vttablet']['consul_auth_static_file'] = nil

# write cpu profile to file
default['vitess']['vttablet']['cpu_profile'] = nil

# deprecated: use db_charset (default "utf8")
default['vitess']['vttablet']['db-config-allprivs-charset'] = 'utf8'

# deprecated: use db_flags
default['vitess']['vttablet']['db-config-allprivs-flags'] = nil

# deprecated: use db_host
default['vitess']['vttablet']['db-config-allprivs-host'] = nil

# db allprivs deprecated: use db_allprivs_password
default['vitess']['vttablet']['db-config-allprivs-pass'] = nil

# deprecated: use db_port
default['vitess']['vttablet']['db-config-allprivs-port'] = nil

# deprecated: use db_server_name
default['vitess']['vttablet']['db-config-allprivs-server_name'] = nil

# deprecated: use db_ssl_ca
default['vitess']['vttablet']['db-config-allprivs-ssl-ca'] = nil

# deprecated: use db_ssl_ca_path
default['vitess']['vttablet']['db-config-allprivs-ssl-ca-path'] = nil

# deprecated: use db_ssl_cert
default['vitess']['vttablet']['db-config-allprivs-ssl-cert'] = nil

# deprecated: use db_ssl_key
default['vitess']['vttablet']['db-config-allprivs-ssl-key'] = nil

# deprecated: use db_allprivs_user (default "vt_allprivs")
default['vitess']['vttablet']['db-config-allprivs-uname'] = 'vt_allprivs'

# deprecated: use db_socket
default['vitess']['vttablet']['db-config-allprivs-unixsocket'] = nil

# deprecated: use db_charset (default "utf8")
default['vitess']['vttablet']['db-config-app-charset'] = 'utf8'

# deprecated: use db_flags
default['vitess']['vttablet']['db-config-app-flags'] = nil

# deprecated: use db_host
default['vitess']['vttablet']['db-config-app-host'] = nil

# db app deprecated: use db_app_password
default['vitess']['vttablet']['db-config-app-pass'] = nil

# deprecated: use db_port
default['vitess']['vttablet']['db-config-app-port'] = nil

# deprecated: use db_server_name
default['vitess']['vttablet']['db-config-app-server_name'] = nil

# deprecated: use db_ssl_ca
default['vitess']['vttablet']['db-config-app-ssl-ca'] = nil

# deprecated: use db_ssl_ca_path
default['vitess']['vttablet']['db-config-app-ssl-ca-path'] = nil

# deprecated: use db_ssl_cert
default['vitess']['vttablet']['db-config-app-ssl-cert'] = nil

# deprecated: use db_ssl_key
default['vitess']['vttablet']['db-config-app-ssl-key'] = nil

# deprecated: use db_app_user (default "vt_app")
default['vitess']['vttablet']['db-config-app-uname'] = 'vt_app'

# deprecated: use db_socket
default['vitess']['vttablet']['db-config-app-unixsocket'] = nil

# deprecated: use db_charset (default "utf8")
default['vitess']['vttablet']['db-config-appdebug-charset'] = 'utf8'

# deprecated: use db_flags
default['vitess']['vttablet']['db-config-appdebug-flags'] = nil

# deprecated: use db_host
default['vitess']['vttablet']['db-config-appdebug-host'] = nil

# db appdebug deprecated: use db_appdebug_password
default['vitess']['vttablet']['db-config-appdebug-pass'] = nil

# deprecated: use db_port
default['vitess']['vttablet']['db-config-appdebug-port'] = nil

# deprecated: use db_server_name
default['vitess']['vttablet']['db-config-appdebug-server_name'] = nil

# deprecated: use db_ssl_ca
default['vitess']['vttablet']['db-config-appdebug-ssl-ca'] = nil

# deprecated: use db_ssl_ca_path
default['vitess']['vttablet']['db-config-appdebug-ssl-ca-path'] = nil

# deprecated: use db_ssl_cert
default['vitess']['vttablet']['db-config-appdebug-ssl-cert'] = nil

# deprecated: use db_ssl_key
default['vitess']['vttablet']['db-config-appdebug-ssl-key'] = nil

# deprecated: use db_appdebug_user (default "vt_appdebug")
default['vitess']['vttablet']['db-config-appdebug-uname'] = 'vt_appdebug'

# deprecated: use db_socket
default['vitess']['vttablet']['db-config-appdebug-unixsocket'] = nil

# deprecated: use db_charset (default "utf8")
default['vitess']['vttablet']['db-config-dba-charset'] = 'utf8'

# deprecated: use db_flags
default['vitess']['vttablet']['db-config-dba-flags'] = nil

# deprecated: use db_host
default['vitess']['vttablet']['db-config-dba-host'] = nil

# db dba deprecated: use db_dba_password
default['vitess']['vttablet']['db-config-dba-pass'] = nil

# deprecated: use db_port
default['vitess']['vttablet']['db-config-dba-port'] = nil

# deprecated: use db_server_name
default['vitess']['vttablet']['db-config-dba-server_name'] = nil

# deprecated: use db_ssl_ca
default['vitess']['vttablet']['db-config-dba-ssl-ca'] = nil

# deprecated: use db_ssl_ca_path
default['vitess']['vttablet']['db-config-dba-ssl-ca-path'] = nil

# deprecated: use db_ssl_cert
default['vitess']['vttablet']['db-config-dba-ssl-cert'] = nil

# deprecated: use db_ssl_key
default['vitess']['vttablet']['db-config-dba-ssl-key'] = nil

# deprecated: use db_dba_user (default "vt_dba")
default['vitess']['vttablet']['db-config-dba-uname'] = 'vt_dba'

# deprecated: use db_socket
default['vitess']['vttablet']['db-config-dba-unixsocket'] = nil

# deprecated: use db_charset (default "utf8")
default['vitess']['vttablet']['db-config-filtered-charset'] = 'utf8'

# deprecated: use db_flags
default['vitess']['vttablet']['db-config-filtered-flags'] = nil

# deprecated: use db_host
default['vitess']['vttablet']['db-config-filtered-host'] = nil

# db filtered deprecated: use db_filtered_password
default['vitess']['vttablet']['db-config-filtered-pass'] = nil

# deprecated: use db_port
default['vitess']['vttablet']['db-config-filtered-port'] = nil

# deprecated: use db_server_name
default['vitess']['vttablet']['db-config-filtered-server_name'] = nil

# deprecated: use db_ssl_ca
default['vitess']['vttablet']['db-config-filtered-ssl-ca'] = nil

# deprecated: use db_ssl_ca_path
default['vitess']['vttablet']['db-config-filtered-ssl-ca-path'] = nil

# deprecated: use db_ssl_cert
default['vitess']['vttablet']['db-config-filtered-ssl-cert'] = nil

# deprecated: use db_ssl_key
default['vitess']['vttablet']['db-config-filtered-ssl-key'] = nil

# deprecated: use db_filtered_user (default "vt_filtered")
default['vitess']['vttablet']['db-config-filtered-uname'] = 'vt_filtered'

# deprecated: use db_socket
default['vitess']['vttablet']['db-config-filtered-unixsocket'] = nil

# deprecated: use db_charset (default "utf8")
default['vitess']['vttablet']['db-config-repl-charset'] = 'utf8'

# deprecated: use db_flags
default['vitess']['vttablet']['db-config-repl-flags'] = nil

# deprecated: use db_host
default['vitess']['vttablet']['db-config-repl-host'] = nil

# db repl deprecated: use db_repl_password
default['vitess']['vttablet']['db-config-repl-pass'] = nil

# deprecated: use db_port
default['vitess']['vttablet']['db-config-repl-port'] = nil

# deprecated: use db_server_name
default['vitess']['vttablet']['db-config-repl-server_name'] = nil

# deprecated: use db_ssl_ca
default['vitess']['vttablet']['db-config-repl-ssl-ca'] = nil

# deprecated: use db_ssl_ca_path
default['vitess']['vttablet']['db-config-repl-ssl-ca-path'] = nil

# deprecated: use db_ssl_cert
default['vitess']['vttablet']['db-config-repl-ssl-cert'] = nil

# deprecated: use db_ssl_key
default['vitess']['vttablet']['db-config-repl-ssl-key'] = nil

# deprecated: use db_repl_user (default "vt_repl")
default['vitess']['vttablet']['db-config-repl-uname'] = 'vt_repl'

# deprecated: use db_socket
default['vitess']['vttablet']['db-config-repl-unixsocket'] = nil

# db credentials file; send SIGHUP to reload this file
default['vitess']['vttablet']['db-credentials-file'] = nil

# db credentials server type (use 'file' for the file implementation) (default "file")
default['vitess']['vttablet']['db-credentials-server'] = 'file'

# db allprivs password
default['vitess']['vttablet']['db_allprivs_password'] = nil

# Set this flag to false to make the allprivs connection to not use ssl (default true)
default['vitess']['vttablet']['db_allprivs_use_ssl'] = true

# db allprivs user userKey (default "vt_allprivs")
default['vitess']['vttablet']['db_allprivs_user'] = 'vt_allprivs'

# db app password
default['vitess']['vttablet']['db_app_password'] = nil

# Set this flag to false to make the app connection to not use ssl (default true)
default['vitess']['vttablet']['db_app_use_ssl'] = true

# db app user userKey (default "vt_app")
default['vitess']['vttablet']['db_app_user'] = 'vt_app'

# db appdebug password
default['vitess']['vttablet']['db_appdebug_password'] = nil

# Set this flag to false to make the appdebug connection to not use ssl (default true)
default['vitess']['vttablet']['db_appdebug_use_ssl'] = true

# db appdebug user userKey (default "vt_appdebug")
default['vitess']['vttablet']['db_appdebug_user'] = 'vt_appdebug'

# Character set. Only utf8 or latin1 based character sets are supported
default['vitess']['vttablet']['db_charset'] = nil

# db dba password
default['vitess']['vttablet']['db_dba_password'] = nil

# Set this flag to false to make the dba connection to not use ssl (default true)
default['vitess']['vttablet']['db_dba_use_ssl'] = true

# db dba user userKey (default "vt_dba")
default['vitess']['vttablet']['db_dba_user'] = 'vt_dba'

# db filtered password
default['vitess']['vttablet']['db_filtered_password'] = nil

# Set this flag to false to make the filtered connection to not use ssl (default true)
default['vitess']['vttablet']['db_filtered_use_ssl'] = true

# db filtered user userKey (default "vt_filtered")
default['vitess']['vttablet']['db_filtered_user'] = 'vt_filtered'

# Flag values as defined by MySQL
default['vitess']['vttablet']['db_flags'] = nil

# The host name for the tcp connection
default['vitess']['vttablet']['db_host'] = nil

# tcp port
default['vitess']['vttablet']['db_port'] = nil

# db repl password
default['vitess']['vttablet']['db_repl_password'] = nil

# Set this flag to false to make the repl connection to not use ssl (default true)
default['vitess']['vttablet']['db_repl_use_ssl'] = true

# db repl user userKey (default "vt_repl")
default['vitess']['vttablet']['db_repl_user'] = 'vt_repl'

# server name of the DB we are connecting to
default['vitess']['vttablet']['db_server_name'] = nil

# The unix socket to connect on. If this is specified, host and port will not be used
default['vitess']['vttablet']['db_socket'] = nil

# connection ssl ca
default['vitess']['vttablet']['db_ssl_ca'] = nil

# connection ssl ca path
default['vitess']['vttablet']['db_ssl_ca_path'] = nil

# connection ssl certificate
default['vitess']['vttablet']['db_ssl_cert'] = nil

# connection ssl key
default['vitess']['vttablet']['db_ssl_key'] = nil

# Idle timeout for dba connections (default 1m0s)
default['vitess']['vttablet']['dba_idle_timeout'] = '1m0s'

# Size of the connection pool for dba connections (default 20)
default['vitess']['vttablet']['dba_pool_size'] = 20

# replication lag after which a replica is considered degraded (only used in status UI) (default 30s)
default['vitess']['vttablet']['degraded_threshold'] = '30s'

# if set, do not allow active reparents. Use this to protect a cluster using external reparents
default['vitess']['vttablet']['disable_active_reparents'] = nil

# the replication lag that is considered too high when selecting the minimum num vttablets for
# serving (default 2h0m0s)
default['vitess']['vttablet']['discovery_high_replication_lag_minimum_serving'] = '2h0m0s'

# the replication lag that is considered low enough to be healthy (default 30s)
default['vitess']['vttablet']['discovery_low_replication_lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['vttablet']['emit_stats'] = nil

# This option enables the query consolidator. (default true)
default['vitess']['vttablet']['enable-consolidator'] = true

# This option enables the query consolidator only on replicas.
default['vitess']['vttablet']['enable-consolidator-replicas'] = nil

# This option fetches & caches fields (columns) when storing query plans (default true)
default['vitess']['vttablet']['enable-query-plan-field-caching'] = true

# If true replication-lag-based throttling on transactions will be enabled
default['vitess']['vttablet']['enable-tx-throttler'] = nil

# If true, incoming transactions for the same row (range) will be queued and cannot consume all
# txpool slots
default['vitess']['vttablet']['enable_hot_row_protection'] = nil

# If true, hot row protection is not enforced but logs if transactions would have been queued
default['vitess']['vttablet']['enable_hot_row_protection_dry_run'] = nil

# Register the health check module that monitors MySQL replication
default['vitess']['vttablet']['enable_replication_reporter'] = nil

# Enable semi-sync when configuring replication, on master and replica tablets only (rdonly tablets
# will not ack)
default['vitess']['vttablet']['enable_semi_sync'] = nil

# If true, limit on number of transactions open at the same time will be enforced for all users. User
# trying to open a new transaction after exhausting their limit will receive an error immediately,
# regardless of whether there are available slots or not
default['vitess']['vttablet']['enable_transaction_limit'] = nil

# If true, limit on number of transactions open at the same time will be tracked for all users, but
# not enforced
default['vitess']['vttablet']['enable_transaction_limit_dry_run'] = nil

# if this flag is true, vttablet will fail to start if a valid tableacl config does not exist
default['vitess']['vttablet']['enforce-tableacl-config'] = nil

# If true, vttablet requires MySQL to run with STRICT_TRANS_TABLES or STRICT_ALL_TABLES on. It is
# recommended to not turn this flag off. Otherwise MySQL may alter your supplied values before saving
# them to the database. (default true)
default['vitess']['vttablet']['enforce_strict_trans_tables'] = true

# root directory for the file backup storage
default['vitess']['vttablet']['file_backup_storage_root'] = nil

# file based custom rule path
default['vitess']['vttablet']['filecustomrules'] = nil

# Google Cloud Storage bucket to use for backups
default['vitess']['vttablet']['gcs_backup_storage_bucket'] = nil

# root prefix for all backup-related object names
default['vitess']['vttablet']['gcs_backup_storage_root'] = nil

# Which auth plugin implementation to use (eg: static)
default['vitess']['vttablet']['grpc_auth_mode'] = nil

# when using grpc_static_auth in the server, this file provides the credentials to use to
# authenticate with server
default['vitess']['vttablet']['grpc_auth_static_client_creds'] = nil

# JSON File to read the users/passwords from
default['vitess']['vttablet']['grpc_auth_static_password_file'] = nil

# ca to use, requires TLS, and enforces client cert check
default['vitess']['vttablet']['grpc_ca'] = nil

# certificate to use, requires grpc_key, enables TLS
default['vitess']['vttablet']['grpc_cert'] = nil

# how to compress gRPC, default: nothing, supported: snappy
default['vitess']['vttablet']['grpc_compression'] = nil

# Enable GRPC tracing
default['vitess']['vttablet']['grpc_enable_tracing'] = nil

# grpc initial connection window size
default['vitess']['vttablet']['grpc_initial_conn_window_size'] = nil

# grpc initial window size
default['vitess']['vttablet']['grpc_initial_window_size'] = nil

# After a duration of this time if the client doesn't see any activity it pings the server to see if
# the transport is still alive. (default 10s)
default['vitess']['vttablet']['grpc_keepalive_time'] = '10s'

# After having pinged for keepalive check, the client waits for a duration of Timeout and if no
# activity is seen even after that the connection is closed. (default 10s)
default['vitess']['vttablet']['grpc_keepalive_timeout'] = '10s'

# key to use, requires grpc_cert, enables TLS
default['vitess']['vttablet']['grpc_key'] = nil

# Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vitess']['vttablet']['grpc_max_connection_age'] = '2562047h47m16.854775807s'

# Additional grace period after grpc_max_connection_age, after which connections are forcibly closed.
# (default 2562047h47m16.854775807s)
default['vitess']['vttablet']['grpc_max_connection_age_grace'] = '2562047h47m16.854775807s'

# Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error
# 'exceeding the max size'. (default 16777216)
default['vitess']['vttablet']['grpc_max_message_size'] = 16_777_216

# Port to listen on for gRPC calls
default['vitess']['vttablet']['grpc_port'] = 16000

# Enable gRPC monitoring with Prometheus
default['vitess']['vttablet']['grpc_prometheus'] = nil

# grpc server initial connection window size
default['vitess']['vttablet']['grpc_server_initial_conn_window_size'] = nil

# grpc server initial window size
default['vitess']['vttablet']['grpc_server_initial_window_size'] = nil

# grpc server minimum keepalive time (default 5m0s)
default['vitess']['vttablet']['grpc_server_keepalive_enforcement_policy_min_time'] = '5m0s'

# grpc server permit client keepalive pings even when there are no active streams (RPCs)
default['vitess']['vttablet']['grpc_server_keepalive_enforcement_policy_permit_without_stream'] = nil

# Interval between health checks (default 20s)
default['vitess']['vttablet']['health_check_interval'] = '20s'

# If true, vttablet records (if master) or checks (if replica) the current time of a replication
# heartbeat in the table _vt.heartbeat. The result is used to inform the serving state of the
# vttablet via healthchecks
default['vitess']['vttablet']['heartbeat_enable'] = nil

# How frequently to read and write replication heartbeat. (default 1s)
default['vitess']['vttablet']['heartbeat_interval'] = '1s'

# Number of concurrent transactions let through to the txpool/MySQL for the same hot row. Should be >
# 1 to have enough 'ready' transactions in MySQL and benefit from a pipelining effect. (default 5)
default['vitess']['vttablet']['hot_row_protection_concurrent_transactions'] = 5

# Global queue limit across all row (ranges). Useful to prevent that the queue can grow unbounded.
# (default 1000)
default['vitess']['vttablet']['hot_row_protection_max_global_queue_size'] = 1_000

# Maximum number of BeginExecute RPCs which will be queued for the same row (range). (default 20)
default['vitess']['vttablet']['hot_row_protection_max_queue_size'] = 20

# (init parameter) override the name of the db used by vttablet
default['vitess']['vttablet']['init_db_name_override'] = nil

# (init parameter) keyspace to use for this tablet
default['vitess']['vttablet']['init_keyspace'] = nil

# (init parameter) populate metadata tables even if restore_from_backup is disabled.
# If restore_from_backup is enabled, metadata tables are always populated regardless of this flag.
default['vitess']['vttablet']['init_populate_metadata'] = nil

# (init parameter) shard to use for this tablet
default['vitess']['vttablet']['init_shard'] = nil

# (init parameter) the tablet type to use for this tablet
default['vitess']['vttablet']['init_tablet_type'] = nil

# (init parameter) comma separated list of key:value pairs used to tag the tablet
default['vitess']['vttablet']['init_tags'] = nil

# (init parameter) timeout to use for the init phase. (default 1m0s)
default['vitess']['vttablet']['init_timeout'] = '1m0s'

# connection timeout to mysqld in milliseconds (0 for no timeout)
default['vitess']['vttablet']['db_connect_timeout_ms'] = 0

# host and port to send spans to. if empty, no tracing will be done
default['vitess']['vttablet']['jaeger-agent-host'] = nil

# keep logs for this long (using ctime) (zero to keep forever)
default['vitess']['vttablet']['keep_logs'] = nil

# keep logs for this long (using mtime) (zero to keep forever)
default['vitess']['vttablet']['keep_logs_by_mtime'] = nil

# keep running at least this long after SIGTERM before stopping (default 50ms)
default['vitess']['vttablet']['lameduck-period'] = '50ms'

# use the legacy algorithm when selecting the vttablets for serving (default true)
default['vitess']['vttablet']['legacy_replication_lag_algorithm'] = true

# How long to keep the table locked before timing out (default 1m0s)
default['vitess']['vttablet']['lock_tables_timeout'] = '1m0s'

# when logging hits line file:N, emit a stack trace
default['vitess']['vttablet']['log_backtrace_at'] = nil

# If non-empty, write log files in this directory
default['vitess']['vttablet']['log_dir'] = nil

# log stack traces for errors
default['vitess']['vttablet']['log_err_stacks'] = nil

# Enable query logging to syslog
default['vitess']['vttablet']['log_queries'] = nil

# Enable query logging to the specified file
default['vitess']['vttablet']['log_queries_to_file'] = nil

# size in bytes at which logs are rotated (glog.MaxSize) (default 1887436800)
default['vitess']['vttablet']['log_rotate_max_size'] = 1_887_436_800

# log to standard error instead of files
default['vitess']['vttablet']['logtostderr'] = nil

# how long to wait in between slave -> connection attempts. Only precise to the second. (default 10s)
default['vitess']['vttablet']['master_connect_retry'] = '10s'

# profile every n bytes allocated (default 524288)
default['vitess']['vttablet']['mem-profile-rate'] = 524_288

# the minimum number of vttablets that will be continue to be used even with low replication lag
# (default 2)
default['vitess']['vttablet']['min_number_serving_vttablets'] = 2

# profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vitess']['vttablet']['mutex-profile-fraction'] = nil

# path to my.cnf, if reading all config params from there
default['vitess']['vttablet']['mycnf-file'] = nil

# mysql binlog path
default['vitess']['vttablet']['mycnf_bin_log_path'] = nil

# data directory for mysql
default['vitess']['vttablet']['mycnf_data_dir'] = nil

# mysql error log path
default['vitess']['vttablet']['mycnf_error_log_path'] = nil

# mysql general log path
default['vitess']['vttablet']['mycnf_general_log_path'] = nil

# Innodb data home directory
default['vitess']['vttablet']['mycnf_innodb_data_home_dir'] = nil

# Innodb log group home directory
default['vitess']['vttablet']['mycnf_innodb_log_group_home_dir'] = nil

# mysql master.info file
default['vitess']['vttablet']['mycnf_master_info_file'] = nil

# port mysql is listening on
default['vitess']['vttablet']['mycnf_mysql_port'] = nil

# mysql pid file
default['vitess']['vttablet']['mycnf_pid_file'] = nil

# mysql relay log index path
default['vitess']['vttablet']['mycnf_relay_log_index_path'] = nil

# mysql relay log info path
default['vitess']['vttablet']['mycnf_relay_log_info_path'] = nil

# mysql relay log path
default['vitess']['vttablet']['mycnf_relay_log_path'] = nil

# mysql server id of the server (if specified, mycnf-file will be ignored)
default['vitess']['vttablet']['mycnf_server_id'] = nil

# slave load tmp directory
default['vitess']['vttablet']['mycnf_slave_load_tmp_dir'] = nil

# mysql slow query log path
default['vitess']['vttablet']['mycnf_slow_log_path'] = nil

# mysql socket file
default['vitess']['vttablet']['mycnf_socket_file'] = nil

# mysql tmp directory
default['vitess']['vttablet']['mycnf_tmp_dir'] = nil

# Delay after which buffered response will flushed to client. (default 100ms)
default['vitess']['vttablet']['mysql_server_flush_delay'] = '100ms'

# JSON File to read the users/passwords from
default['vitess']['vttablet']['mysql_auth_server_static_file'] = nil

# JSON representation of the users/passwords config
default['vitess']['vttablet']['mysql_auth_server_static_string'] = nil

# Ticker to reload credentials
default['vitess']['vttablet']['mysql_auth_static_reload_interval'] = nil

# client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default
# "mysql_clear_password")
default['vitess']['vttablet']['mysql_clientcert_auth_method'] = 'mysql_clear_password'

# the protocol to use to talk to the mysqlctl server (default "grpc")
default['vitess']['vttablet']['mysqlctl_client_protocol'] = 'grpc'

# template file to use for generating the my.cnf file during server init
default['vitess']['vttablet']['mysqlctl_mycnf_template'] = nil

# socket file to use for remote mysqlctl actions (empty for local actions)
default['vitess']['vttablet']['mysqlctl_socket'] = nil

# wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vitess']['vttablet']['onterm_timeout'] = '10s'

# URI of opentsdb /api/put method
default['vitess']['vttablet']['opentsdb_uri'] = nil

# (Optional) Basic auth password to authenticate with Orchestrator's HTTP API
default['vitess']['vttablet']['orc_api_password'] = nil

# Address of Orchestrator's HTTP API (e.g. http://host:port/api/). Leave empty to disable
# Orchestrator integration
default['vitess']['vttablet']['orc_api_url'] = nil

# (Optional) Basic auth username to authenticate with Orchestrator's HTTP API. Leave empty to disable
# basic auth
default['vitess']['vttablet']['orc_api_user'] = nil

# How often to ping Orchestrator's HTTP API endpoint to tell it we exist. 0 means never
default['vitess']['vttablet']['orc_discover_interval'] = nil

# Timeout for calls to Orchestrator's HTTP API (default 30s)
default['vitess']['vttablet']['orc_timeout'] = '30s'

# If set, the process will write its pid to the named file, and delete it on graceful shutdown
default['vitess']['vttablet']['pid_file'] = nil

# if set force an update to all hostnames and reconnect if changed, defaults to 0 (disabled)
default['vitess']['vttablet']['pool_hostname_resolve_interval'] = nil

# port for the server
default['vitess']['vttablet']['port'] = 15_100

# how often try to remove old logs (default 1h0m0s)
default['vitess']['vttablet']['purge_logs_interval'] = '1h0m0s'

# URL handler for streaming queries log (default "/debug/querylog")
default['vitess']['vttablet']['query-log-stream-handler'] = '/debug/querylog'

# string that must be present in the query for it to be logged
default['vitess']['vttablet']['querylog-filter-tag'] = nil

# format for query logs ("text" or "json") (default "text")
default['vitess']['vttablet']['querylog-format'] = 'text'

# an acl that exempt from table acl checking (this acl is free to access any vitess tables)
default['vitess']['vttablet']['queryserver-config-acl-exempt-acl'] = nil

# If this flag is enabled, tabletserver will emit monitoring metrics and let the request pass
# regardless of table acl check results
default['vitess']['vttablet']['queryserver-config-enable-table-acl-dry-run'] = nil

# query server idle timeout (in seconds), vttablet manages various mysql connection pools. This
# config means if a connection has not been used in given idle timeout, this connection will be
# removed from pool. This effectively manages number of connection objects and optimize the pool
# performance. (default 1800)
default['vitess']['vttablet']['queryserver-config-idle-timeout'] = 1_800

# query server max dml rows per statement, maximum number of rows allowed to return at a time for an
# update or delete with either 1) an equality where clauses on primary keys, or 2) a subselect
# statement. For update and delete statements in above two categories, vttablet will split the
# original query into multiple small queries based on this configuration value.
default['vitess']['vttablet']['queryserver-config-max-dml-rows'] = nil

# query server max result size, maximum number of rows allowed to return from vttablet for
# non-streaming queries. (default 10000)
default['vitess']['vttablet']['queryserver-config-max-result-size'] = 10_000

# query server message postpone cap is the maximum number of messages that can be postponed at any
# given time. Set this number to substantially lower than transaction cap, so that the transaction
# pool isn't exhausted by the message subsystem. (default 4)
default['vitess']['vttablet']['queryserver-config-message-postpone-cap'] = 4

# query server pass through all dml statements without rewriting
default['vitess']['vttablet']['queryserver-config-passthrough-dmls'] = nil

# query server read pool prefill parallelism, a non-zero value will prefill the pool using the
# specified parallism
default['vitess']['vttablet']['queryserver-config-pool-prefill-parallelism'] = nil

# query server read pool size, connection pool is used by regular queries (non streaming, not in a
# transaction) (default 16)
default['vitess']['vttablet']['queryserver-config-pool-size'] = 16

# query server query cache size, maximum number of queries to be cached. vttablet analyzes every
# incoming query and generate a query plan, these plans are being cached in a lru cache. This config
# controls the capacity of the lru cache. (default 5000)
default['vitess']['vttablet']['queryserver-config-query-cache-size'] = 5_000

# query server query pool timeout (in seconds), it is how long vttablet waits for a connection from
# the query pool. If set to 0 (default) then the overall query timeout is used instead
default['vitess']['vttablet']['queryserver-config-query-pool-timeout'] = nil

# query server query pool waiter limit, this is the maximum number of queries that can be queued
# waiting to get a connection (default 5000)
default['vitess']['vttablet']['queryserver-config-query-pool-waiter-cap'] = 5_000

# query server query timeout (in seconds), this is the query timeout in vttablet side. If a query
# takes more than this timeout, it will be killed. (default 30)
default['vitess']['vttablet']['queryserver-config-query-timeout'] = 30

# query server schema reload time, how often vttablet reloads schemas from underlying MySQL instance
# in seconds. vttablet keeps table schemas in its own memory and periodically refreshes it from
# MySQL. This config controls the reload time. (default 1800)
default['vitess']['vttablet']['queryserver-config-schema-reload-time'] = 1_800

# query server stream buffer size, the maximum number of bytes sent from vttablet for each stream
# call. It's recommended to keep this value in sync with vtgate's stream_buffer_size. (default 32768)
default['vitess']['vttablet']['queryserver-config-stream-buffer-size'] = 32_768

# query server stream pool prefill parallelism, a non-zero value will prefill the pool using the
# specified parallelism
default['vitess']['vttablet']['queryserver-config-stream-pool-prefill-parallelism'] = nil

# query server stream connection pool size, stream pool is used by stream queries: queries that
# return results to client in a streaming fashion (default 200)
default['vitess']['vttablet']['queryserver-config-stream-pool-size'] = 200

# only allow queries that pass table acl checks
default['vitess']['vttablet']['queryserver-config-strict-table-acl'] = nil

# prevent bind vars from escaping in returned errors
default['vitess']['vttablet']['queryserver-config-terse-errors'] = nil

# query server transaction cap is the maximum number of transactions allowed to happen at any given
# point of a time for a single vttablet. E.g. by setting transaction cap to 100, there are at most
# 100 transactions will be processed by a vttablet and the 101th transaction will be blocked (and
# fail if it cannot get connection within specified timeout) (default 20)
default['vitess']['vttablet']['queryserver-config-transaction-cap'] = 20

# query server transaction prefill parallelism, a non-zero value will prefill the pool using the
# specified parallism
default['vitess']['vttablet']['queryserver-config-transaction-prefill-parallelism'] = nil

# query server transaction timeout (in seconds), a transaction will be killed if it takes longer than
# this value (default 30)
default['vitess']['vttablet']['queryserver-config-transaction-timeout'] = 30

# query server transaction pool timeout, it is how long vttablet waits if tx pool is full (default 1)
default['vitess']['vttablet']['queryserver-config-txpool-timeout'] = 1

# query server transaction pool waiter limit, this is the maximum number of transactions that can be
# queued waiting to get a connection (default 5000)
default['vitess']['vttablet']['queryserver-config-txpool-waiter-cap'] = 5_000

# query server result size warning threshold, warn if number of rows returned from vttablet for
# non-streaming queries exceeds this
default['vitess']['vttablet']['queryserver-config-warn-result-size'] = nil

# redact full queries and bind variables from debug UI
default['vitess']['vttablet']['redact-debug-ui-queries'] = nil

# time to wait for a remote operation (default 30s)
default['vitess']['vttablet']['remote_operation_timeout'] = '30s'

# (init restore parameter) how many concurrent files to restore at once (default 4)
default['vitess']['vttablet']['restore_concurrency'] = 4

# (init restore parameter) will check BackupStorage for a recent backup at startup and start there
default['vitess']['vttablet']['restore_from_backup'] = nil

# endpoint of the S3 backend (region must be provided)
default['vitess']['vttablet']['s3_backup_aws_endpoint'] = nil

# AWS region to use (default "us-east-1")
default['vitess']['vttablet']['s3_backup_aws_region'] = 'us-east-1'

# force the s3 path style
default['vitess']['vttablet']['s3_backup_force_path_style'] = nil

# determine the S3 loglevel to use from LogOff, LogDebug, LogDebugWithSigning, LogDebugWithHTTPBody,
# LogDebugWithRequestRetries, LogDebugWithRequestErrors (default "LogOff")
default['vitess']['vttablet']['s3_backup_log_level'] = 'LogOff'

# server-side encryption algorithm (e.g., AES256, aws:kms)
default['vitess']['vttablet']['s3_backup_server_side_encryption'] = nil

# S3 bucket to use for backups
default['vitess']['vttablet']['s3_backup_storage_bucket'] = nil

# root prefix for all backup-related object names
default['vitess']['vttablet']['s3_backup_storage_root'] = nil

# skip the 'certificate is valid' check for SSL connections
default['vitess']['vttablet']['s3_backup_tls_skip_verify_cert'] = nil

# the name of a registered security policy to use for controlling access to URLs - empty means allow
# all for anyone (built-in policies: deny-all, read-only)
default['vitess']['vttablet']['security_policy'] = nil

# comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vitess']['vttablet']['service_map'] = nil

# how long to pause after broadcasting health to vtgate, before enforcing a new serving state
default['vitess']['vttablet']['serving_state_grace_period'] = nil

# truncate queries in error logs to the given length (default unlimited)
default['vitess']['vttablet']['sql-max-length-errors'] = 0

# truncate queries in debug UIs to the given length (default 512) (default 512)
default['vitess']['vttablet']['sql-max-length-ui'] = 512

# how frequently to refresh the topology for cached entries (default 1s)
default['vitess']['vttablet']['srv_topo_cache_refresh'] = '1s'

# how long to use cached entries for topology (default 1s)
default['vitess']['vttablet']['srv_topo_cache_ttl'] = '1s'

# The name of the registered push-based monitoring/stats backend to use
default['vitess']['vttablet']['stats_backend'] = nil

# Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['vttablet']['stats_emit_period'] = '1m0s'

# List of dimensions to be combined into a single "all" value in exported stats vars
default['vitess']['vttablet']['stats_combine_dimensions'] = nil

# Variables to be dropped from the list of exported variables.
default['vitess']['vttablet']['stats_drop_variables'] = nil

# logs at or above this threshold go to stderr (default 1)
default['vitess']['vttablet']['stderrthreshold'] = 1

# path to table access checker config file; send SIGHUP to reload this file
default['vitess']['vttablet']['table-acl-config'] = nil

# Ticker to reload ACLs
default['vitess']['vttablet']['table-acl-config-reload-interval'] = nil

# tablet alias
default['vitess']['vttablet']['tablet-path'] = nil

# The directory within the vtdataroot to store vttablet/mysql files. Defaults to being generated by
# the tablet uid
default['vitess']['vttablet']['tablet_dir'] = nil

# the server ca to use to validate servers when connecting
default['vitess']['vttablet']['tablet_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vttablet']['tablet_grpc_cert'] = nil

# the key to use to connect
default['vitess']['vttablet']['tablet_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vttablet']['tablet_grpc_server_name'] = nil

# if not empty, this hostname will be assumed instead of trying to resolve it
default['vitess']['vttablet']['tablet_hostname'] = nil

# the server ca to use to validate servers when connecting
default['vitess']['vttablet']['tablet_manager_grpc_ca'] = nil

# the cert to use to connect
default['vitess']['vttablet']['tablet_manager_grpc_cert'] = nil

# concurrency to use to talk to a vttablet server for performance-sensitive RPCs (like
# ExecuteFetchAs{Dba,AllPrivs,App}) (default 8)
default['vitess']['vttablet']['tablet_manager_grpc_concurrency'] = 8

# the key to use to connect
default['vitess']['vttablet']['tablet_manager_grpc_key'] = nil

# the server name to use to validate server certificate
default['vitess']['vttablet']['tablet_manager_grpc_server_name'] = nil

# the protocol to use to talk to vttablet (default "grpc")
default['vitess']['vttablet']['tablet_manager_protocol'] = 'grpc'

# how to talk to the vttablets (default "grpc")
default['vitess']['vttablet']['tablet_protocol'] = 'grpc'

# format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how
# to customize this. (default "http://{{.GetTabletHostPort}}")
default['vitess']['vttablet']['tablet_url_template'] = 'http://{{.GetTabletHostPort}}'

# time of the long poll for watch queries. Interrupting a watch may wait for up to that time.
# (default 30s)
default['vitess']['vttablet']['topo_consul_watch_poll_duration'] = '30s'

# Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going.
# (default 30)
default['vitess']['vttablet']['topo_etcd_lease_ttl'] = 30

# auth to use when connecting to the zk topo server, file contents should be <scheme>:<auth>, e.g.,
# digest:user:pass
default['vitess']['vttablet']['topo_zk_auth_file'] = nil

# zk base timeout (see zk.Connect) (default 30s)
default['vitess']['vttablet']['topo_zk_base_timeout'] = '30s'

# maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vitess']['vttablet']['topo_zk_max_concurrency'] = 64

# the server ca to use to validate servers when connecting to the zk topo server
default['vitess']['vttablet']['topo_zk_tls_ca'] = nil

# the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
default['vitess']['vttablet']['topo_zk_tls_cert'] = nil

# the key to use to connect to the zk topo server, enables TLS
default['vitess']['vttablet']['topo_zk_tls_key'] = nil

# topo cell for customrules file. (default "global")
default['vitess']['vttablet']['topocustomrule_cell'] = 'global'

# path for customrules file. Disabled if empty
default['vitess']['vttablet']['topocustomrule_path'] = nil

# tracing service to use (default "noop")
default['vitess']['vttablet']['tracer'] = 'noop'

# sampling rate for the probabilistic jaeger sampler (default 0.1)
default['vitess']['vttablet']['tracing-sampling-rate'] = 0.1

# URL handler for streaming transactions log (default "/debug/txlog")
default['vitess']['vttablet']['transaction-log-stream-handler'] = '/debug/txlog'

# Include CallerID.component when considering who the user is for the purpose of transaction limit
default['vitess']['vttablet']['transaction_limit_by_component'] = nil

# Include CallerID.principal when considering who the user is for the purpose of transaction limit.
# (default true)
default['vitess']['vttablet']['transaction_limit_by_principal'] = true

# Include CallerID.subcomponent when considering who the user is for the purpose of transaction limit
default['vitess']['vttablet']['transaction_limit_by_subcomponent'] = nil

# Include VTGateCallerID.username when considering who the user is for the purpose of transaction
# limit. (default true)
default['vitess']['vttablet']['transaction_limit_by_username'] = true

# Maximum number of transactions a single user is allowed to use at any time, represented as fraction
# of -transaction_cap. (default 0.4)
default['vitess']['vttablet']['transaction_limit_per_user'] = 0.4

# how long to wait (in seconds) for transactions to complete during graceful shutdown
default['vitess']['vttablet']['transaction_shutdown_grace_period'] = nil

# time in seconds. Any unresolved transaction older than this time will be sent to the coordinator to
# be resolved
default['vitess']['vttablet']['twopc_abandon_age'] = nil

# address of the (VTGate) process(es) that will be used to notify of abandoned transactions
default['vitess']['vttablet']['twopc_coordinator_address'] = nil

# if the flag is on, 2pc is enabled. Other 2pc flags must be supplied
default['vitess']['vttablet']['twopc_enable'] = nil

# The configuration of the transaction throttler as a text formatted throttlerdata.Configuration
# protocol buffer message (default "target_replication_lag_sec: 2\nmax_replication_lag_sec:
# 10\ninitial_rate: 100\nmax_increase: 1\nemergency_decrease:
# 0.5\nmin_duration_between_increases_sec: 40\nmax_duration_between_increases_sec:
# 62\nmin_duration_between_decreases_sec: 20\nspread_backlog_across_sec: 20\nage_bad_rate_after_sec:
# 180\nbad_rate_increase: 0.1\nmax_rate_approach_threshold: 0.9\n")
default['vitess']['vttablet']['tx-throttler-config'] = '"target_replication_lag_sec: 2\nmax_replication_lag_sec: 10\ninitial_rate: 100\nmax_increase: 1\nemergency_decrease: 0.5\nmin_duration_between_increases_sec: 40\nmax_duration_between_increases_sec: 62\nmin_duration_between_decreases_sec: 20\nspread_backlog_across_sec: 20\nage_bad_rate_after_sec: 180\nbad_rate_increase: 0.1\nmax_rate_approach_threshold: 0.9\n"'

# A comma-separated list of cells. Only tabletservers running in these cells will be monitored for
# replication lag by the transaction throttler
default['vitess']['vttablet']['tx-throttler-healthcheck-cells'] = nil

# replication lag  after which a replica is considered unhealthy (default 2h0m0s)
default['vitess']['vttablet']['unhealthy_threshold'] = '2h0m0s'

# Set super_read_only flag when performing planned failover
default['vitess']['vttablet']['use_super_read_only'] = nil

# print binary version
default['vitess']['vttablet']['version'] = nil

# comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['vttablet']['vmodule'] = nil

# delay before retrying a failed healthcheck (default 5s)
default['vitess']['vttablet']['vreplication_healthcheck_retry_delay'] = '5s'

# the health check timeout period (default 1m0s)
default['vitess']['vttablet']['vreplication_healthcheck_timeout'] = '1m0s'

# refresh interval for re-reading the topology (default 30s)
default['vitess']['vttablet']['vreplication_healthcheck_topology_refresh'] = '30s'

# delay before retrying a failed binlog connection (default 5s)
default['vitess']['vttablet']['vreplication_retry_delay'] = '5s'

# comma separated list of tablet types used as a source (default "REPLICA")
default['vitess']['vttablet']['vreplication_tablet_type'] = 'REPLICA'

# Suggested packet size for VReplication streamer. This is used only as a recommendation. The actual
# packet size may be more or less than this amount. (default 30000)
default['vitess']['vttablet']['vstream_packet_size'] = 30_000

# address of a vtctld instance
default['vitess']['vttablet']['vtctld_addr'] = nil

# how to talk to vtgate (default "grpc")
default['vitess']['vttablet']['vtgate_protocol'] = 'grpc'

# (init restore parameter) if this is greater than 0, instead of starting up empty when no backups
# are found, keep checking at this interval for a backup to appear
default['vitess']['vttablet']['wait_for_backup_interval'] = nil

# When enabled, vttablet will stream the MySQL replication stream from the local server, and use it
# to support the include_event_token ExecuteOptions
default['vitess']['vttablet']['watch_replication_stream'] = nil

# flags to pass to xbstream command during restore. These should be space separated and will be added
# to the end of the command. These need to match the ones used for backup e.g. --compress /
# --decompress, --encrypt / --decrypt
default['vitess']['vttablet']['xbstream_restore_flags'] = nil

# flags to pass to backup command. These should be space separated and will be added to the end of
# the command
default['vitess']['vttablet']['xtrabackup_backup_flags'] = nil

# flags to pass to prepare command. These should be space separated and will be added to the end of the command
default['vitess']['vttablet']['xtrabackup_prepare_flags'] = nil

# directory location of the xtrabackup executable, e.g., /usr/bin
default['vitess']['vttablet']['xtrabackup_root_path'] = nil

# which mode to use if streaming, valid values are tar and xbstream (default "tar")
default['vitess']['vttablet']['xtrabackup_stream_mode'] = 'tar'

# Size in bytes of each block that gets sent to a given stripe before rotating to the next stripe
# (default 102400)
default['vitess']['vttablet']['xtrabackup_stripe_block_size'] = 102_400

# If greater than 0, use data striping across this many destination files to parallelize data
# transfer and decompression
default['vitess']['vttablet']['xtrabackup_stripes'] = nil
