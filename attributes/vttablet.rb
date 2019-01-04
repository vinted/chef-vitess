# log to standard error as well as files
# default['vinted-vitess']['vttablet']['alsologtostderr'] =

# duration Idle timeout for app connections (default 1m0s)
default['vinted-vitess']['vttablet']['app']['idle']['timeout'] = '1m0s'

# int Size of the connection pool for app connections (default 40)
default['vinted-vitess']['vttablet']['app']['pool']['size'] = 40

# int if backup_storage_compress is true, backup_storage_block_size sets the byte size for each block while compressing (default is 250000). (default 250000)
default['vinted-vitess']['vttablet']['backup']['storage']['block']['size'] = 250000

# if set, the backup files will be compressed (default is true). Set to false for instance if a backup_storage_hook is specified and it compresses the data. (default true)
default['vinted-vitess']['vttablet']['backup']['storage']['compress'] = true

# string if set, we send the contents of the backup files through this hook.
# default['vinted-vitess']['vttablet']['backup']['storage']['hook'] =

# string which implementation to use for the backup storage feature
# default['vinted-vitess']['vttablet']['backup']['storage']['implementation'] =

# int if backup_storage_compress is true, backup_storage_number_blocks sets the number of blocks that can be processed, at once, before the writer blocks, during compression (default is 2). It should be equal to the number of CPUs available for compression (default 2)
default['vinted-vitess']['vttablet']['backup']['storage']['number']['blocks'] = 2

# string the server ca to use to validate servers when connecting
# default['vinted-vitess']['vttablet']['binlog']['player']['grpc']['ca'] =

# string the cert to use to connect
# default['vinted-vitess']['vttablet']['binlog']['player']['grpc']['cert'] =

# string the key to use to connect
# default['vinted-vitess']['vttablet']['binlog']['player']['grpc']['key'] =

# string the server name to use to validate server certificate
# default['vinted-vitess']['vttablet']['binlog']['player']['grpc']['server']['name'] =

# string the protocol to download binlogs from a vttablet (default "grpc")
default['vinted-vitess']['vttablet']['binlog']['player']['protocol'] = 'grpc'

# True iff the binlog streamer should use V3-style sharding, which doesn't require a preset sharding key column. (default true)
default['vinted-vitess']['vttablet']['binlog']['use']['v3']['resharding']['mode'] = true

# string Path to JSON config file for ceph backup storage (default "ceph_backup_config.json")
default['vinted-vitess']['vttablet']['ceph']['backup']['storage']['config'] = 'ceph_backup_config.json'

# int size of a special pool that will be used if the client requests that statements be executed with the CLIENT_FOUND_ROWS option of MySQL. (default 20)
default['vinted-vitess']['vttablet']['client']['found']['rows']['pool']['size'] = 20

# string JSON File to read the topos/tokens from.
# default['vinted-vitess']['vttablet']['consul']['auth']['static']['file'] =

# string write cpu profile to file
# default['vinted-vitess']['vttablet']['cpu']['profile'] =

# duration Idle timeout for dba connections (default 1m0s)
default['vinted-vitess']['vttablet']['dba']['idle']['timeout'] = '1m0s'

# string db allprivs password
# default['vinted-vitess']['vttablet']['db']['allprivs']['password'] =

# string db allprivs user userKey (default "vt_allprivs")
default['vinted-vitess']['vttablet']['db']['allprivs']['user'] = 'vt_allprivs'

# Set this flag to false to make the allprivs connection to not use ssl (default true)
default['vinted-vitess']['vttablet']['db']['allprivs']['use']['ssl'] = true

# int Size of the connection pool for dba connections (default 20)
default['vinted-vitess']['vttablet']['dba']['pool']['size'] = 20

# string db appdebug password
# default['vinted-vitess']['vttablet']['db']['appdebug']['password'] =

# string db appdebug user userKey (default "vt_appdebug")
default['vinted-vitess']['vttablet']['db']['appdebug']['user'] = 'vt_appdebug'

# Set this flag to false to make the appdebug connection to not use ssl (default true)
default['vinted-vitess']['vttablet']['db']['appdebug']['use']['ssl'] = true

# string db app password
# default['vinted-vitess']['vttablet']['db']['app']['password'] =

# string db app user userKey (default "vt_app")
default['vinted-vitess']['vttablet']['db']['app']['user'] = 'vt_app'

# Set this flag to false to make the app connection to not use ssl (default true)
default['vinted-vitess']['vttablet']['db']['app']['use']['ssl'] = true

# string Character set. Only utf8 or latin1 based character sets are supported. (default "utf8")
default['vinted-vitess']['vttablet']['db']['charset'] = 'utf8'

# string db credentials file
# default['vinted-vitess']['vttablet']['db']['credentials']['file'] =

# string db credentials server type (use 'file' for the file implementation) (default "file")
default['vinted-vitess']['vttablet']['db']['credentials']['server'] = 'file'

# string db dba password
# default['vinted-vitess']['vttablet']['db']['dba']['password'] =

# string db dba user userKey (default "vt_dba")
default['vinted-vitess']['vttablet']['db']['dba']['user'] = 'vt_dba'

# Set this flag to false to make the dba connection to not use ssl (default true)
default['vinted-vitess']['vttablet']['db']['dba']['use']['ssl'] = true

# string db filtered password
# default['vinted-vitess']['vttablet']['db']['filtered']['password'] =

# string db filtered user userKey (default "vt_filtered")
default['vinted-vitess']['vttablet']['db']['filtered']['user'] = 'vt_filtered'

# Set this flag to false to make the filtered connection to not use ssl (default true)
default['vinted-vitess']['vttablet']['db']['filtered']['use']['ssl'] = true

# uint Flag values as defined by MySQL.
# default['vinted-vitess']['vttablet']['db']['flags'] =

# string The host name for the tcp connection.
# default['vinted-vitess']['vttablet']['db']['host'] =

# int tcp port
# default['vinted-vitess']['vttablet']['db']['port'] =

# string db repl password
# default['vinted-vitess']['vttablet']['db']['repl']['password'] =

# string db repl user userKey (default "vt_repl")
default['vinted-vitess']['vttablet']['db']['repl']['user'] = 'vt_repl'

# Set this flag to false to make the repl connection to not use ssl (default true)
default['vinted-vitess']['vttablet']['db']['repl']['use']['ssl'] = true

# string The unix socket to connect on. If this is specifed, host and port will not be used.
# default['vinted-vitess']['vttablet']['db']['socket'] =

# string connection ssl ca path
# default['vinted-vitess']['vttablet']['db']['ssl']['ca']['path'] =

# string connection ssl ca
# default['vinted-vitess']['vttablet']['db']['ssl']['ca'] =

# string connection ssl certificate
# default['vinted-vitess']['vttablet']['db']['ssl']['cert'] =

# string connection ssl key
# default['vinted-vitess']['vttablet']['db']['ssl']['key'] =

# duration replication lag after which a replica is considered degraded (only used in status UI) (default 30s)
default['vinted-vitess']['vttablet']['degraded']['threshold'] = '30s'

# if set, do not allow active reparents. Use this to protect a cluster using external reparents.
# default['vinted-vitess']['vttablet']['disable']['active']['reparents'] =

# duration the replication lag that is considered too high when selecting the minimum num vttablets for serving (default 2h0m0s)
default['vinted-vitess']['vttablet']['discovery']['high']['replication']['lag']['minimum']['serving'] = '2h0m0s'

# duration the replication lag that is considered low enough to be healthy (default 30s)
default['vinted-vitess']['vttablet']['discovery']['low']['replication']['lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
# default['vinted-vitess']['vttablet']['emit']['stats'] =

# if the flag is on, a DML outsides a transaction will be auto committed. This flag is deprecated and is unsafe. Instead, use the VTGate provided autocommit feature.
# default['vinted-vitess']['vttablet']['enable']['autocommit'] =

# This option enables the query consolidator. (default true)
default['vinted-vitess']['vttablet']['enable']['consolidator'] = true

# If true, hot row protection is not enforced but logs if transactions would have been queued.
# default['vinted-vitess']['vttablet']['enable']['hot']['row']['protection']['dry']['run'] =

# If true, incoming transactions for the same row (range) will be queued and cannot consume all txpool slots.
# default['vinted-vitess']['vttablet']['enable']['hot']['row']['protection'] =

# Register the health check module that monitors MySQL replication
# default['vinted-vitess']['vttablet']['enable']['replication']['reporter'] =

# Enable semi-sync when configuring replication, on master and replica tablets only (rdonly tablets will not ack).
# default['vinted-vitess']['vttablet']['enable']['semi']['sync'] =

# If true, limit on number of transactions open at the same time will be tracked for all users, but not enforced.
# default['vinted-vitess']['vttablet']['enable']['transaction']['limit']['dry']['run'] =

# If true, limit on number of transactions open at the same time will be enforced for all users. User trying to open a new transaction after exhausting their limit will receive an error immediately, regardless of whether there are available slots or not.
# default['vinted-vitess']['vttablet']['enable']['transaction']['limit'] =

# If true replication-lag-based throttling on transactions will be enabled.
# default['vinted-vitess']['vttablet']['enable']['tx']['throttler'] =

# If true, vttablet requires MySQL to run with STRICT_TRANS_TABLES on. It is recommended to not turn this flag off. Otherwise MySQL may alter your supplied values before saving them to the database. (default true)
default['vinted-vitess']['vttablet']['enforce']['strict']['trans']['tables'] = true

# if this flag is true, vttablet will fail to start if a valid tableacl config does not exist
# default['vinted-vitess']['vttablet']['enforce']['tableacl']['config'] =

# string root directory for the file backup storage
# default['vinted-vitess']['vttablet']['file']['backup']['storage']['root'] =

# string file based custom rule path
# default['vinted-vitess']['vttablet']['filecustomrules'] =

# duration Timeout for the finalize stage of a fast external reparent reconciliation. (default 30s)
default['vinted-vitess']['vttablet']['finalize']['external']['reparent']['timeout'] = '30s'

# string Google Cloud Storage bucket to use for backups
# default['vinted-vitess']['vttablet']['gcs']['backup']['storage']['bucket'] =

# string This flag is unused and deprecated. It will be removed entirely in a future release.
# default['vinted-vitess']['vttablet']['gcs']['backup']['storage']['project'] =

# string root prefix for all backup-related object names
# default['vinted-vitess']['vttablet']['gcs']['backup']['storage']['root'] =

# string Which auth plugin implementation to use (eg: static)
# default['vinted-vitess']['vttablet']['grpc']['auth']['mode'] =

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
# default['vinted-vitess']['vttablet']['grpc']['auth']['static']['client']['creds'] =

# string JSON File to read the users/passwords from.
# default['vinted-vitess']['vttablet']['grpc']['auth']['static']['password']['file'] =

# string ca to use, requires TLS, and enforces client cert check
# default['vinted-vitess']['vttablet']['grpc']['ca'] =

# string certificate to use, requires grpc_key, enables TLS
# default['vinted-vitess']['vttablet']['grpc']['cert'] =

# string how to compress gRPC, default: nothing, supported: snappy
# default['vinted-vitess']['vttablet']['grpc']['compression'] =

# Enable GRPC tracing
# default['vinted-vitess']['vttablet']['grpc']['enable']['tracing'] =

# int grpc initial connection window size
# default['vinted-vitess']['vttablet']['grpc']['initial']['conn']['window']['size'] =

# int grpc initial window size
# default['vinted-vitess']['vttablet']['grpc']['initial']['window']['size'] =

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
# default['vinted-vitess']['vttablet']['grpc']['keepalive']['time'] =

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
# default['vinted-vitess']['vttablet']['grpc']['keepalive']['timeout'] =

# string key to use, requires grpc_cert, enables TLS
# default['vinted-vitess']['vttablet']['grpc']['key'] =

# duration Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vinted-vitess']['vttablet']['grpc']['max']['connection']['age'] = '2562047h47m16.854775807s'

# duration Additional grace period after grpc_max_connection_age, after which connections are forcibly closed. (default 2562047h47m16.854775807s)
default['vinted-vitess']['vttablet']['grpc']['max']['connection']['age']['grace'] = '2562047h47m16.854775807s'

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vinted-vitess']['vttablet']['grpc']['max']['message']['size'] = 16777216

# int Port to listen on for gRPC calls
# default['vinted-vitess']['vttablet']['grpc']['port'] =

# Enable gRPC monitoring with Prometheus
# default['vinted-vitess']['vttablet']['grpc']['prometheus'] =

# int grpc server initial connection window size
# default['vinted-vitess']['vttablet']['grpc']['server']['initial']['conn']['window']['size'] =

# int grpc server initial window size
# default['vinted-vitess']['vttablet']['grpc']['server']['initial']['window']['size'] =

# duration grpc server minimum keepalive time (default 5m0s)
default['vinted-vitess']['vttablet']['grpc']['server']['keepalive']['enforcement']['policy']['min']['time'] = '5m0s'

# duration Interval between health checks (default 20s)
default['vinted-vitess']['vttablet']['health']['check']['interval'] = '20s'

# If true, vttablet records (if master) or checks (if replica) the current time of a replication heartbeat in the table _vt.heartbeat. The result is used to inform the serving state of the vttablet via healthchecks.
# default['vinted-vitess']['vttablet']['heartbeat']['enable'] =

# duration How frequently to read and write replication heartbeat. (default 1s)
default['vinted-vitess']['vttablet']['heartbeat']['interval'] = '1s'

# int Number of concurrent transactions let through to the txpool/MySQL for the same hot row. Should be > 1 to have enough 'ready' transactions in MySQL and benefit from a pipelining effect. (default 5)
default['vinted-vitess']['vttablet']['hot']['row']['protection']['concurrent']['transactions'] = 5

# int Global queue limit across all row (ranges). Useful to prevent that the queue can grow unbounded. (default 1000)
default['vinted-vitess']['vttablet']['hot']['row']['protection']['max']['global']['queue']['size'] = 1000

# int Maximum number of BeginExecute RPCs which will be queued for the same row (range). (default 20)
default['vinted-vitess']['vttablet']['hot']['row']['protection']['max']['queue']['size'] = 20

# string the name of the influxdb database (default "vitess")
default['vinted-vitess']['vttablet']['influxdb']['database'] = 'vitess'

# string the influxdb host (with port) (default "localhost:8086")
default['vinted-vitess']['vttablet']['influxdb']['host'] = 'localhost:8086'

# string influxdb password (default "root")
default['vinted-vitess']['vttablet']['influxdb']['password'] = 'root'

# string influxdb username (default "root")
default['vinted-vitess']['vttablet']['influxdb']['username'] = 'root'

# string (init parameter) override the name of the db used by vttablet
# default['vinted-vitess']['vttablet']['init']['db']['name']['override'] =

# string (init parameter) keyspace to use for this tablet
# default['vinted-vitess']['vttablet']['init']['keyspace'] =

# string (init parameter) shard to use for this tablet
# default['vinted-vitess']['vttablet']['init']['shard'] =

# string (init parameter) the tablet type to use for this tablet.
# default['vinted-vitess']['vttablet']['init']['tablet']['type'] =

# value (init parameter) comma separated list of key:value pairs used to tag the tablet
# default['vinted-vitess']['vttablet']['init']['tags'] =

# duration (init parameter) timeout to use for the init phase. (default 1m0s)
default['vinted-vitess']['vttablet']['init']['timeout'] = '1m0s'

# duration keep logs for this long (zero to keep forever)
# default['vinted-vitess']['vttablet']['keep']['logs'] =

# duration keep running at least this long after SIGTERM before stopping (default 50ms)
default['vinted-vitess']['vttablet']['lameduck']['period'] = '50ms'

# duration timeout for acquiring topology locks (default 30s)
default['vinted-vitess']['vttablet']['lock']['timeout'] = '30s'

# value when logging hits line file:N, emit a stack trace
# default['vinted-vitess']['vttablet']['log']['backtrace']['at'] =

# string If non-empty, write log files in this directory
# default['vinted-vitess']['vttablet']['log']['dir'] =

# Enable query logging to syslog.
# default['vinted-vitess']['vttablet']['log']['queries'] =

# string Enable query logging to the specified file
# default['vinted-vitess']['vttablet']['log']['queries']['to']['file'] =

# log to standard error instead of files
# default['vinted-vitess']['vttablet']['logtostderr'] =

# duration how long to wait in between slave -> connection attempts. Only precise to the second. (default 10s)
default['vinted-vitess']['vttablet']['master']['connect']['retry'] = '10s'

# int profile every n bytes allocated (default 524288)
default['vinted-vitess']['vttablet']['mem']['profile']['rate'] = 524288

# int the minimum number of vttablets that will be continue to be used even with low replication lag (default 2)
default['vinted-vitess']['vttablet']['min']['number']['serving']['vttablets'] = 2

# int profile every n mutex contention events (see runtime.SetMutexProfileFraction)
# default['vinted-vitess']['vttablet']['mutex']['profile']['fraction'] =

# string mysql binlog path
# default['vinted-vitess']['vttablet']['mycnf']['bin']['log']['path'] =

# string data directory for mysql
# default['vinted-vitess']['vttablet']['mycnf']['data']['dir'] =

# string mysql error log path
# default['vinted-vitess']['vttablet']['mycnf']['error']['log']['path'] =

# string path to my.cnf, if reading all config params from there
# default['vinted-vitess']['vttablet']['mycnf']['file'] =

# string mysql general log path
# default['vinted-vitess']['vttablet']['mycnf']['general']['log']['path'] =

# string Innodb data home directory
# default['vinted-vitess']['vttablet']['mycnf']['innodb']['data']['home']['dir'] =

# string Innodb log group home directory
# default['vinted-vitess']['vttablet']['mycnf']['innodb']['log']['group']['home']['dir'] =

# string mysql master.info file
# default['vinted-vitess']['vttablet']['mycnf']['master']['info']['file'] =

# int port mysql is listening on
# default['vinted-vitess']['vttablet']['mycnf']['mysql']['port'] =

# string mysql pid file
# default['vinted-vitess']['vttablet']['mycnf']['pid']['file'] =

# string mysql relay log index path
# default['vinted-vitess']['vttablet']['mycnf']['relay']['log']['index']['path'] =

# string mysql relay log info path
# default['vinted-vitess']['vttablet']['mycnf']['relay']['log']['info']['path'] =

# string mysql relay log path
# default['vinted-vitess']['vttablet']['mycnf']['relay']['log']['path'] =

# int mysql server id of the server (if specified, mycnf-file will be ignored)
# default['vinted-vitess']['vttablet']['mycnf']['server']['id'] =

# string slave load tmp directory
# default['vinted-vitess']['vttablet']['mycnf']['slave']['load']['tmp']['dir'] =

# string mysql slow query log path
# default['vinted-vitess']['vttablet']['mycnf']['slow']['log']['path'] =

# string mysql socket file
# default['vinted-vitess']['vttablet']['mycnf']['socket']['file'] =

# string mysql tmp directory
# default['vinted-vitess']['vttablet']['mycnf']['tmp']['dir'] =

# string JSON File to read the users/passwords from.
# default['vinted-vitess']['vttablet']['mysql']['auth']['server']['static']['file'] =

# string JSON representation of the users/passwords config.
# default['vinted-vitess']['vttablet']['mysql']['auth']['server']['static']['string'] =

# string the protocol to use to talk to the mysqlctl server (default "grpc")
default['vinted-vitess']['vttablet']['mysqlctl']['client']['protocol'] = 'grpc'

# string template file to use for generating the my.cnf file during server init
# default['vinted-vitess']['vttablet']['mysqlctl']['mycnf']['template'] =

# string socket file to use for remote mysqlctl actions (empty for local actions)
# default['vinted-vitess']['vttablet']['mysqlctl']['socket'] =

# duration wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vinted-vitess']['vttablet']['onterm']['timeout'] = '10s'

# string URI of opentsdb /api/put method
# default['vinted-vitess']['vttablet']['opentsdb']['uri'] =

# string Address of Orchestrator's HTTP API (e.g. http://host:port/api/). Leave empty to disable Orchestrator integration.
# default['vinted-vitess']['vttablet']['orc']['api']['url'] =

# duration How often to ping Orchestrator's HTTP API endpoint to tell it we exist. 0 means never.
# default['vinted-vitess']['vttablet']['orc']['discover']['interval'] =

# duration Timeout for calls to Orchestrator's HTTP API (default 30s)
default['vinted-vitess']['vttablet']['orc']['timeout'] = '30s'

# string If set, the process will write its pid to the named file, and delete it on graceful shutdown.
# default['vinted-vitess']['vttablet']['pid']['file'] =

# string pool name prefix, vttablet has several pools and each of them has a name. This config specifies the prefix of these pool names
# default['vinted-vitess']['vttablet']['pool']['name']['prefix'] =

# int port for the server
# default['vinted-vitess']['vttablet']['port'] =

# duration how often try to remove old logs (default 1h0m0s)
default['vinted-vitess']['vttablet']['purge']['logs']['interval'] = '1h0m0s'

# string format for query logs ("text" or "json") (default "text")
default['vinted-vitess']['vttablet']['querylog']['format'] = 'text'

# string URL handler for streaming queries log (default "/debug/querylog")
default['vinted-vitess']['vttablet']['query']['log']['stream']['handler'] = '/debug/querylog'

# string an acl that exempt from table acl checking (this acl is free to access any vitess tables).
# default['vinted-vitess']['vttablet']['queryserver']['config']['acl']['exempt']['acl'] =

# query server allow unsafe dml statements
# default['vinted-vitess']['vttablet']['queryserver']['config']['allowunsafe']['dmls'] =

# If this flag is enabled, tabletserver will emit monitoring metrics and let the request pass regardless of table acl check results
# default['vinted-vitess']['vttablet']['queryserver']['config']['enable']['table']['acl']['dry']['run'] =

# float query server idle timeout (in seconds), vttablet manages various mysql connection pools. This config means if a connection has not been used in given idle timeout, this connection will be removed from pool. This effectively manages number of connection objects and optimize the pool performance. (default 1800)
default['vinted-vitess']['vttablet']['queryserver']['config']['idle']['timeout'] = 1800.0

# int query server max dml rows per statement, maximum number of rows allowed to return at a time for an update or delete with either 1) an equality where clauses on primary keys, or 2) a subselect statement. For update and delete statements in above two categories, vttablet will split the original query into multiple small queries based on this configuration value.  (default 500)
default['vinted-vitess']['vttablet']['queryserver']['config']['max']['dml']['rows'] = 500

# int query server max result size, maximum number of rows allowed to return from vttablet for non-streaming queries. (default 10000)
default['vinted-vitess']['vttablet']['queryserver']['config']['max']['result']['size'] = 10000

# int query server message connection pool size, message pool is used by message managers: recommended value is one per message table (default 5)
default['vinted-vitess']['vttablet']['queryserver']['config']['message']['conn']['pool']['size'] = 5

# int query server message postpone cap is the maximum number of messages that can be postponed at any given time. Set this number to substantially lower than transaction cap, so that the transaction pool isn't exhausted by the message subsystem. (default 4)
default['vinted-vitess']['vttablet']['queryserver']['config']['message']['postpone']['cap'] = 4

# query server pass through all dml statements without rewriting
# default['vinted-vitess']['vttablet']['queryserver']['config']['passthrough']['dmls'] =

# int query server connection pool size, connection pool is used by regular queries (non streaming, not in a transaction) (default 16)
default['vinted-vitess']['vttablet']['queryserver']['config']['pool']['size'] = 16

# int query server query cache size, maximum number of queries to be cached. vttablet analyzes every incoming query and generate a query plan, these plans are being cached in a lru cache. This config controls the capacity of the lru cache. (default 5000)
default['vinted-vitess']['vttablet']['queryserver']['config']['query']['cache']['size'] = 5000

# float query server query pool timeout (in seconds), it is how long vttablet waits for a connection from the query pool. If set to 0 (default) then the overall query timeout is used instead.
# default['vinted-vitess']['vttablet']['queryserver']['config']['query']['pool']['timeout'] =

# int query server query pool waiter limit, this is the maximum number of queries that can be queued waiting to get a connection (default 50000)
default['vinted-vitess']['vttablet']['queryserver']['config']['query']['pool']['waiter']['cap'] = 50000

# float query server query timeout (in seconds), this is the query timeout in vttablet side. If a query takes more than this timeout, it will be killed. (default 30)
default['vinted-vitess']['vttablet']['queryserver']['config']['query']['timeout'] = 30.0

# float query server schema reload time, how often vttablet reloads schemas from underlying MySQL instance in seconds. vttablet keeps table schemas in its own memory and periodically refreshes it from MySQL. This config controls the reload time. (default 1800)
default['vinted-vitess']['vttablet']['queryserver']['config']['schema']['reload']['time'] = 1800.0

# int query server stream buffer size, the maximum number of bytes sent from vttablet for each stream call. It's recommended to keep this value in sync with vtgate's stream_buffer_size. (default 32768)
default['vinted-vitess']['vttablet']['queryserver']['config']['stream']['buffer']['size'] = 32768

# int query server stream connection pool size, stream pool is used by stream queries: queries that return results to client in a streaming fashion (default 200)
default['vinted-vitess']['vttablet']['queryserver']['config']['stream']['pool']['size'] = 200

# only allow queries that pass table acl checks
# default['vinted-vitess']['vttablet']['queryserver']['config']['strict']['table']['acl'] =

# prevent bind vars from escaping in returned errors
# default['vinted-vitess']['vttablet']['queryserver']['config']['terse']['errors'] =

# int query server transaction cap is the maximum number of transactions allowed to happen at any given point of a time for a single vttablet. E.g. by setting transaction cap to 100, there are at most 100 transactions will be processed by a vttablet and the 101th transaction will be blocked (and fail if it cannot get connection within specified timeout) (default 20)
default['vinted-vitess']['vttablet']['queryserver']['config']['transaction']['cap'] = 20

# float query server transaction timeout (in seconds), a transaction will be killed if it takes longer than this value (default 30)
default['vinted-vitess']['vttablet']['queryserver']['config']['transaction']['timeout'] = 30.0

# float query server transaction pool timeout, it is how long vttablet waits if tx pool is full (default 1)
default['vinted-vitess']['vttablet']['queryserver']['config']['txpool']['timeout'] = 1.0

# int query server transaction pool waiter limit, this is the maximum number of transactions that can be queued waiting to get a connection (default 50000)
default['vinted-vitess']['vttablet']['queryserver']['config']['txpool']['waiter']['cap'] = 50000

# int query server result size warning threshold, warn if number of rows returned from vttablet for non-streaming queries exceeds this
# default['vinted-vitess']['vttablet']['queryserver']['config']['warn']['result']['size'] =

# redact full queries and bind variables from debug UI
# default['vinted-vitess']['vttablet']['redact']['debug']['ui']['queries'] =

# int (init restore parameter) how many concurrent files to restore at once (default 4)
default['vinted-vitess']['vttablet']['restore']['concurrency'] = 4

# (init restore parameter) will check BackupStorage for a recent backup at startup and start there
# default['vinted-vitess']['vttablet']['restore']['from']['backup'] =

# string endpoint of the S3 backend (region must be provided)
# default['vinted-vitess']['vttablet']['s3']['backup']['aws']['endpoint'] =

# string AWS region to use (default "us-east-1")
default['vinted-vitess']['vttablet']['s3']['backup']['aws']['region'] = 'us-east-1'

# force the s3 path style
# default['vinted-vitess']['vttablet']['s3']['backup']['force']['path']['style'] =

# string determine the S3 loglevel to use from LogOff, LogDebug, LogDebugWithSigning, LogDebugWithHTTPBody, LogDebugWithRequestRetries, LogDebugWithRequestErrors (default "LogOff")
default['vinted-vitess']['vttablet']['s3']['backup']['log']['level'] = 'LogOff'

# string server-side encryption algorithm (e.g., AES256, aws:kms)
# default['vinted-vitess']['vttablet']['s3']['backup']['server']['side']['encryption'] =

# string S3 bucket to use for backups
# default['vinted-vitess']['vttablet']['s3']['backup']['storage']['bucket'] =

# string root prefix for all backup-related object names
# default['vinted-vitess']['vttablet']['s3']['backup']['storage']['root'] =

# skip the 'certificate is valid' check for SSL connections
# default['vinted-vitess']['vttablet']['s3']['backup']['tls']['skip']['verify']['cert'] =

# string security policy to enforce for URLs
# default['vinted-vitess']['vttablet']['security']['policy'] =

# value comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
# default['vinted-vitess']['vttablet']['service']['map'] =

# duration how long to pause after broadcasting health to vtgate, before enforcing a new serving state
# default['vinted-vitess']['vttablet']['serving']['state']['grace']['period'] =

# int truncate queries in error logs to the given length (default unlimited)
default['vinted-vitess']['vttablet']['sql']['max']['length']['errors'] = 0

# int truncate queries in debug UIs to the given length (default 512) (default 512)
default['vinted-vitess']['vttablet']['sql']['max']['length']['ui'] = 512

# duration how frequently to refresh the topology for cached entries (default 1s)
default['vinted-vitess']['vttablet']['srv']['topo']['cache']['refresh'] = '1s'

# duration how long to use cached entries for topology (default 1s)
default['vinted-vitess']['vttablet']['srv']['topo']['cache']['ttl'] = '1s'

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vinted-vitess']['vttablet']['stats']['backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vinted-vitess']['vttablet']['stats']['emit']['period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vinted-vitess']['vttablet']['stderrthreshold'] = 1

# string path to table access checker config file; send SIGHUP to reload this file
# default['vinted-vitess']['vttablet']['table']['acl']['config'] =

# string The directory within the vtdataroot to store vttablet/mysql files. Defaults to being generated by the tablet uid.
# default['vinted-vitess']['vttablet']['tablet']['dir'] =

# string the server ca to use to validate servers when connecting
# default['vinted-vitess']['vttablet']['tablet']['grpc']['ca'] =

# string the cert to use to connect
# default['vinted-vitess']['vttablet']['tablet']['grpc']['cert'] =

# string the key to use to connect
# default['vinted-vitess']['vttablet']['tablet']['grpc']['key'] =

# string the server name to use to validate server certificate
# default['vinted-vitess']['vttablet']['tablet']['grpc']['server']['name'] =

# string if not empty, this hostname will be assumed instead of trying to resolve it
# default['vinted-vitess']['vttablet']['tablet']['hostname'] =

# string the server ca to use to validate servers when connecting
# default['vinted-vitess']['vttablet']['tablet']['manager']['grpc']['ca'] =

# string the cert to use to connect
# default['vinted-vitess']['vttablet']['tablet']['manager']['grpc']['cert'] =

# int concurrency to use to talk to a vttablet server for performance-sensitive RPCs (like ExecuteFetchAs{Dba,AllPrivs,App}) (default 8)
default['vinted-vitess']['vttablet']['tablet']['manager']['grpc']['concurrency'] = 8

# string the key to use to connect
# default['vinted-vitess']['vttablet']['tablet']['manager']['grpc']['key'] =

# string the server name to use to validate server certificate
# default['vinted-vitess']['vttablet']['tablet']['manager']['grpc']['server']['name'] =

# string the protocol to use to talk to vttablet (default "grpc")
default['vinted-vitess']['vttablet']['tablet']['manager']['protocol'] = 'grpc'

# string tablet alias
# default['vinted-vitess']['vttablet']['tablet']['path'] =

# string how to talk to the vttablets (default "grpc")
default['vinted-vitess']['vttablet']['tablet']['protocol'] = 'grpc'

# string format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how to customize this. (default "http://{{.GetTabletHostPort}}")
default['vinted-vitess']['vttablet']['tablet']['url']['template'] = 'http://{{.GetTabletHostPort}}'

# duration time of the long poll for watch queries. Interrupting a watch may wait for up to that time. (default 30s)
default['vinted-vitess']['vttablet']['topo']['consul']['watch']['poll']['duration'] = '30s'

# string topo cell for customrules file. (default "global")
default['vinted-vitess']['vttablet']['topocustomrule']['cell'] = 'global'

# string path for customrules file. Disabled if empty.
# default['vinted-vitess']['vttablet']['topocustomrule']['path'] =

# int Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going. (default 30)
default['vinted-vitess']['vttablet']['topo']['etcd']['lease']['ttl'] = 30

# string the path of the global topology data in the global topology server
# default['vinted-vitess']['vttablet']['topo']['global']['root'] =

# string the address of the global topology server
# default['vinted-vitess']['vttablet']['topo']['global']['server']['address'] =

# string the topology implementation to use (default "zookeeper")
default['vinted-vitess']['vttablet']['topo']['implementation'] = 'zookeeper'

# duration zk base timeout (see zk.Connect) (default 30s)
default['vinted-vitess']['vttablet']['topo']['zk']['base']['timeout'] = '30s'

# int maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vinted-vitess']['vttablet']['topo']['zk']['max']['concurrency'] = 64

# string the server ca to use to validate servers when connecting to the zk topo server
# default['vinted-vitess']['vttablet']['topo']['zk']['tls']['ca'] =

# string the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
# default['vinted-vitess']['vttablet']['topo']['zk']['tls']['cert'] =

# string the key to use to connect to the zk topo server, enables TLS
# default['vinted-vitess']['vttablet']['topo']['zk']['tls']['key'] =

# Include CallerID.component when considering who the user is for the purpose of transaction limit.
# default['vinted-vitess']['vttablet']['transaction']['limit']['by']['component'] =

# Include CallerID.principal when considering who the user is for the purpose of transaction limit. (default true)
default['vinted-vitess']['vttablet']['transaction']['limit']['by']['principal'] = true

# Include CallerID.subcomponent when considering who the user is for the purpose of transaction limit.
# default['vinted-vitess']['vttablet']['transaction']['limit']['by']['subcomponent'] =

# Include VTGateCallerID.username when considering who the user is for the purpose of transaction limit. (default true)
default['vinted-vitess']['vttablet']['transaction']['limit']['by']['username'] = true

# float Maximum number of transactions a single user is allowed to use at any time, represented as fraction of -transaction_cap. (default 0.4)
default['vinted-vitess']['vttablet']['transaction']['limit']['per']['user'] = 0.4

# string URL handler for streaming transactions log (default "/debug/txlog")
default['vinted-vitess']['vttablet']['transaction']['log']['stream']['handler'] = '/debug/txlog'

# float how long to wait (in seconds) for transactions to complete during graceful shutdown.
# default['vinted-vitess']['vttablet']['transaction']['shutdown']['grace']['period'] =

# float time in seconds. Any unresolved transaction older than this time will be sent to the coordinator to be resolved.
# default['vinted-vitess']['vttablet']['twopc']['abandon']['age'] =

# string address of the (VTGate) process(es) that will be used to notify of abandoned transactions.
# default['vinted-vitess']['vttablet']['twopc']['coordinator']['address'] =

# if the flag is on, 2pc is enabled. Other 2pc flags must be supplied.
# default['vinted-vitess']['vttablet']['twopc']['enable'] =

# string The configuration of the transaction throttler as a text formatted throttlerdata.Configuration protocol buffer message (default "target_replication_lag_sec: 2\nmax_replication_lag_sec: 10\ninitial_rate: 100\nmax_increase: 1\nemergency_decrease: 0.5\nmin_duration_between_increases_sec: 40\nmax_duration_between_increases_sec: 62\nmin_duration_between_decreases_sec: 20\nspread_backlog_across_sec: 20\nage_bad_rate_after_sec: 180\nbad_rate_increase: 0.1\nmax_rate_approach_threshold: 0.9\n")
default['vinted-vitess']['vttablet']['tx']['throttler']['config'] = 'target_replication_lag_sec: 2\nmax_replication_lag_sec: 10\ninitial_rate: 100\nmax_increase: 1\nemergency_decrease: 0.5\nmin_duration_between_increases_sec: 40\nmax_duration_between_increases_sec: 62\nmin_duration_between_decreases_sec: 20\nspread_backlog_across_sec: 20\nage_bad_rate_after_sec: 180\nbad_rate_increase: 0.1\nmax_rate_approach_threshold: 0.9\n'

# value A comma-separated list of cells. Only tabletservers running in these cells will be monitored for replication lag by the transaction throttler.
# default['vinted-vitess']['vttablet']['tx']['throttler']['healthcheck']['cells'] =

# duration replication lag  after which a replica is considered unhealthy (default 2h0m0s)
default['vinted-vitess']['vttablet']['unhealthy']['threshold'] = '2h0m0s'

# value comma-separated list of pattern=N settings for file-filtered logging
# default['vinted-vitess']['vttablet']['vmodule'] =

# duration delay before retrying a failed healthcheck (default 5s)
default['vinted-vitess']['vttablet']['vreplication']['healthcheck']['retry']['delay'] = '5s'

# duration the health check timeout period (default 1m0s)
default['vinted-vitess']['vttablet']['vreplication']['healthcheck']['timeout'] = '1m0s'

# duration refresh interval for re-reading the topology (default 30s)
default['vinted-vitess']['vttablet']['vreplication']['healthcheck']['topology']['refresh'] = '30s'

# duration delay before retrying a failed binlog connection (default 5s)
default['vinted-vitess']['vttablet']['vreplication']['retry']['delay'] = '5s'

# string comma separated list of tablet types used as a source (default "REPLICA")
default['vinted-vitess']['vttablet']['vreplication']['tablet']['type'] = 'REPLICA'

# string address of a vtctld instance
# default['vinted-vitess']['vttablet']['vtctld']['addr'] =

# string how to talk to vtgate (default "grpc")
default['vinted-vitess']['vttablet']['vtgate']['protocol'] = 'grpc'

# value log level for V logs
# default['vinted-vitess']['vttablet']['v'] =

# When enabled, vttablet will stream the MySQL replication stream from the local server, and use it to support the include_event_token ExecuteOptions.
# default['vinted-vitess']['vttablet']['watch']['replication']['stream'] =

