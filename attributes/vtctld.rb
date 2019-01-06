# duration time to wait for an action before resorting to force (default 2m0s)
default['vinted-vitess']['vtctld']['action']['timeout'] = '2m0s'

# log to standard error as well as files
default['vinted-vitess']['vtctld']['alsologtostderr'] = nil

# duration Idle timeout for app connections (default 1m0s)
default['vinted-vitess']['vtctld']['app']['idle']['timeout'] = '1m0s'

# int Size of the connection pool for app connections (default 40)
default['vinted-vitess']['vtctld']['app']['pool']['size'] = 40

# int if backup_storage_compress is true, backup_storage_block_size sets the byte size for each block while compressing (default is 250000). (default 250000)
default['vinted-vitess']['vtctld']['backup']['storage']['block']['size'] = 250000

# if set, the backup files will be compressed (default is true). Set to false for instance if a backup_storage_hook is specified and it compresses the data. (default true)
default['vinted-vitess']['vtctld']['backup']['storage']['compress'] = true

# string if set, we send the contents of the backup files through this hook.
default['vinted-vitess']['vtctld']['backup']['storage']['hook'] = nil

# string which implementation to use for the backup storage feature
default['vinted-vitess']['vtctld']['backup']['storage']['implementation'] = nil

# int if backup_storage_compress is true, backup_storage_number_blocks sets the number of blocks that can be processed, at once, before the writer blocks, during compression (default is 2). It should be equal to the number of CPUs available for compression (default 2)
default['vinted-vitess']['vtctld']['backup']['storage']['number']['blocks'] = 2

# string the protocol to download binlogs from a vttablet (default "grpc")
default['vinted-vitess']['vtctld']['binlog']['player']['protocol'] = 'grpc'

# string cell to use
default['vinted-vitess']['vtctld']['cell'] = nil

# string Path to JSON config file for ceph backup storage (default "ceph_backup_config.json")
default['vinted-vitess']['vtctld']['ceph']['backup']['storage']['config'] = 'ceph_backup_config.json'

# string JSON File to read the topos/tokens from.
default['vinted-vitess']['vtctld']['consul']['auth']['static']['file'] = nil

# string write cpu profile to file
default['vinted-vitess']['vtctld']['cpu']['profile'] = nil

# duration Idle timeout for dba connections (default 1m0s)
default['vinted-vitess']['vtctld']['dba']['idle']['timeout'] = '1m0s'

# int Size of the connection pool for dba connections (default 20)
default['vinted-vitess']['vtctld']['dba']['pool']['size'] = 20

# string db credentials file
default['vinted-vitess']['vtctld']['db']['credentials']['file'] = nil

# string db credentials server type (use 'file' for the file implementation) (default "file")
default['vinted-vitess']['vtctld']['db']['credentials']['server'] = 'file'

# if set, do not allow active reparents. Use this to protect a cluster using external reparents.
default['vinted-vitess']['vtctld']['disable']['active']['reparents'] = nil

# duration the replication lag that is considered too high when selecting the minimum num vttablets for serving (default 2h0m0s)
default['vinted-vitess']['vtctld']['discovery']['high']['replication']['lag']['minimum']['serving'] = '2h0m0s'

# duration the replication lag that is considered low enough to be healthy (default 30s)
default['vinted-vitess']['vtctld']['discovery']['low']['replication']['lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
default['vinted-vitess']['vtctld']['emit']['stats'] = nil

# if set, allows vtgate and vttablet queries. May have security implications, as the queries will be run from this process.
default['vinted-vitess']['vtctld']['enable']['queries'] = nil

# Required for the Realtime Stats view. If set, vtctld will maintain a streaming RPC to each tablet (in all cells) to gather the realtime health stats.
default['vinted-vitess']['vtctld']['enable']['realtime']['stats'] = nil

# string root directory for the file backup storage
default['vinted-vitess']['vtctld']['file']['backup']['storage']['root'] = nil

# string Google Cloud Storage bucket to use for backups
default['vinted-vitess']['vtctld']['gcs']['backup']['storage']['bucket'] = nil

# string This flag is unused and deprecated. It will be removed entirely in a future release.
default['vinted-vitess']['vtctld']['gcs']['backup']['storage']['project'] = nil

# string root prefix for all backup-related object names
default['vinted-vitess']['vtctld']['gcs']['backup']['storage']['root'] = nil

# string Which auth plugin implementation to use (eg: static)
default['vinted-vitess']['vtctld']['grpc']['auth']['mode'] = nil

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
default['vinted-vitess']['vtctld']['grpc']['auth']['static']['client']['creds'] = nil

# string JSON File to read the users/passwords from.
default['vinted-vitess']['vtctld']['grpc']['auth']['static']['password']['file'] = nil

# string ca to use, requires TLS, and enforces client cert check
default['vinted-vitess']['vtctld']['grpc']['ca'] = nil

# string certificate to use, requires grpc_key, enables TLS
default['vinted-vitess']['vtctld']['grpc']['cert'] = nil

# string how to compress gRPC, default: nothing, supported: snappy
default['vinted-vitess']['vtctld']['grpc']['compression'] = nil

# Enable GRPC tracing
default['vinted-vitess']['vtctld']['grpc']['enable']['tracing'] = nil

# int grpc initial connection window size
default['vinted-vitess']['vtctld']['grpc']['initial']['conn']['window']['size'] = nil

# int grpc initial window size
default['vinted-vitess']['vtctld']['grpc']['initial']['window']['size'] = nil

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
default['vinted-vitess']['vtctld']['grpc']['keepalive']['time'] = nil

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
default['vinted-vitess']['vtctld']['grpc']['keepalive']['timeout'] = nil

# string key to use, requires grpc_cert, enables TLS
default['vinted-vitess']['vtctld']['grpc']['key'] = nil

# duration Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vinted-vitess']['vtctld']['grpc']['max']['connection']['age'] = '2562047h47m16.854775807s'

# duration Additional grace period after grpc_max_connection_age, after which connections are forcibly closed. (default 2562047h47m16.854775807s)
default['vinted-vitess']['vtctld']['grpc']['max']['connection']['age']['grace'] = '2562047h47m16.854775807s'

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vinted-vitess']['vtctld']['grpc']['max']['message']['size'] = 16777216

# int Port to listen on for gRPC calls
default['vinted-vitess']['vtctld']['grpc']['port'] = nil

# Enable gRPC monitoring with Prometheus
default['vinted-vitess']['vtctld']['grpc']['prometheus'] = nil

# int grpc server initial connection window size
default['vinted-vitess']['vtctld']['grpc']['server']['initial']['conn']['window']['size'] = nil

# int grpc server initial window size
default['vinted-vitess']['vtctld']['grpc']['server']['initial']['window']['size'] = nil

# duration grpc server minimum keepalive time (default 5m0s)
default['vinted-vitess']['vtctld']['grpc']['server']['keepalive']['enforcement']['policy']['min']['time'] = '5m0s'

# string the name of the influxdb database (default "vitess")
default['vinted-vitess']['vtctld']['influxdb']['database'] = 'vitess'

# string the influxdb host (with port) (default "localhost:8086")
default['vinted-vitess']['vtctld']['influxdb']['host'] = 'localhost:8086'

# string influxdb password (default "root")
default['vinted-vitess']['vtctld']['influxdb']['password'] = 'root'

# string influxdb username (default "root")
default['vinted-vitess']['vtctld']['influxdb']['username'] = 'root'

# duration keep logs for this long (zero to keep forever)
default['vinted-vitess']['vtctld']['keep']['logs'] = nil

# duration keep running at least this long after SIGTERM before stopping (default 50ms)
default['vinted-vitess']['vtctld']['lameduck']['period'] = '50ms'

# duration timeout for acquiring topology locks (default 30s)
default['vinted-vitess']['vtctld']['lock']['timeout'] = '30s'

# value when logging hits line file:N, emit a stack trace
default['vinted-vitess']['vtctld']['log']['backtrace']['at'] = nil

# string If non-empty, write log files in this directory
default['vinted-vitess']['vtctld']['log']['dir'] = nil

# log to standard error instead of files
default['vinted-vitess']['vtctld']['logtostderr'] = nil

# duration how long to wait in between slave -> connection attempts. Only precise to the second. (default 10s)
default['vinted-vitess']['vtctld']['master']['connect']['retry'] = '10s'

# int profile every n bytes allocated (default 524288)
default['vinted-vitess']['vtctld']['mem']['profile']['rate'] = 524288

# int the minimum number of vttablets that will be continue to be used even with low replication lag (default 2)
default['vinted-vitess']['vtctld']['min']['number']['serving']['vttablets'] = 2

# int profile every n mutex contention events (see runtime.SetMutexProfileFraction)
default['vinted-vitess']['vtctld']['mutex']['profile']['fraction'] = nil

# string JSON File to read the users/passwords from.
default['vinted-vitess']['vtctld']['mysql']['auth']['server']['static']['file'] = nil

# string JSON representation of the users/passwords config.
default['vinted-vitess']['vtctld']['mysql']['auth']['server']['static']['string'] = nil

# string the protocol to use to talk to the mysqlctl server (default "grpc")
default['vinted-vitess']['vtctld']['mysqlctl']['client']['protocol'] = 'grpc'

# string template file to use for generating the my.cnf file during server init
default['vinted-vitess']['vtctld']['mysqlctl']['mycnf']['template'] = nil

# string socket file to use for remote mysqlctl actions (empty for local actions)
default['vinted-vitess']['vtctld']['mysqlctl']['socket'] = nil

# duration wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vinted-vitess']['vtctld']['onterm']['timeout'] = '10s'

# string URI of opentsdb /api/put method
default['vinted-vitess']['vtctld']['opentsdb']['uri'] = nil

# string If set, the process will write its pid to the named file, and delete it on graceful shutdown.
default['vinted-vitess']['vtctld']['pid']['file'] = nil

# int port for the server
default['vinted-vitess']['vtctld']['port'] = nil

# duration how often try to remove old logs (default 1h0m0s)
default['vinted-vitess']['vtctld']['purge']['logs']['interval'] = '1h0m0s'

# string endpoint of the S3 backend (region must be provided)
default['vinted-vitess']['vtctld']['s3']['backup']['aws']['endpoint'] = nil

# string AWS region to use (default "us-east-1")
default['vinted-vitess']['vtctld']['s3']['backup']['aws']['region'] = 'us-east-1'

# force the s3 path style
default['vinted-vitess']['vtctld']['s3']['backup']['force']['path']['style'] = nil

# string determine the S3 loglevel to use from LogOff, LogDebug, LogDebugWithSigning, LogDebugWithHTTPBody, LogDebugWithRequestRetries, LogDebugWithRequestErrors (default "LogOff")
default['vinted-vitess']['vtctld']['s3']['backup']['log']['level'] = 'LogOff'

# string server-side encryption algorithm (e.g., AES256, aws:kms)
default['vinted-vitess']['vtctld']['s3']['backup']['server']['side']['encryption'] = nil

# string S3 bucket to use for backups
default['vinted-vitess']['vtctld']['s3']['backup']['storage']['bucket'] = nil

# string root prefix for all backup-related object names
default['vinted-vitess']['vtctld']['s3']['backup']['storage']['root'] = nil

# skip the 'certificate is valid' check for SSL connections
default['vinted-vitess']['vtctld']['s3']['backup']['tls']['skip']['verify']['cert'] = nil

# int this value decides how often we check schema change dir, in seconds (default 60)
default['vinted-vitess']['vtctld']['schema']['change']['check']['interval'] = 60

# string schema change controller is responsible for finding schema changes and responsing schema change events
default['vinted-vitess']['vtctld']['schema']['change']['controller'] = nil

# string directory contains schema changes for all keyspaces. Each keyspace has its own directory and schema changes are expected to live in '$KEYSPACE/input' dir. e.g. test_keyspace/input/*sql, each sql file represents a schema change
default['vinted-vitess']['vtctld']['schema']['change']['dir'] = nil

# duration how long to wait for slaves to receive the schema change (default 10s)
default['vinted-vitess']['vtctld']['schema']['change']['slave']['timeout'] = '10s'

# string The user who submits this schema change.
default['vinted-vitess']['vtctld']['schema']['change']['user'] = nil

# duration timeout for SQL queries used to save and retrieve meta information for schema swap process (default 30s)
default['vinted-vitess']['vtctld']['schema']['swap']['admin']['query']['timeout'] = '30s'

# int number of simultaneous compression/checksum jobs to run for seed backup during schema swap (default 4)
default['vinted-vitess']['vtctld']['schema']['swap']['backup']['concurrency'] = 4

# duration time to wait after a retryable error happened in the schema swap process (default 1m0s)
default['vinted-vitess']['vtctld']['schema']['swap']['delay']['between']['errors'] = '1m0s'

# duration timeout to wait for slaves when doing reparent during schema swap (default 30s)
default['vinted-vitess']['vtctld']['schema']['swap']['reparent']['timeout'] = '30s'

# string security policy to enforce for URLs
default['vinted-vitess']['vtctld']['security']['policy'] = nil

# value comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
default['vinted-vitess']['vtctld']['service']['map'] = nil

# int truncate queries in error logs to the given length (default unlimited)
default['vinted-vitess']['vtctld']['sql']['max']['length']['errors'] = 0

# int truncate queries in debug UIs to the given length (default 512) (default 512)
default['vinted-vitess']['vtctld']['sql']['max']['length']['ui'] = 512

# duration how frequently to refresh the topology for cached entries (default 1s)
default['vinted-vitess']['vtctld']['srv']['topo']['cache']['refresh'] = '1s'

# duration how long to use cached entries for topology (default 1s)
default['vinted-vitess']['vtctld']['srv']['topo']['cache']['ttl'] = '1s'

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vinted-vitess']['vtctld']['stats']['backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vinted-vitess']['vtctld']['stats']['emit']['period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vinted-vitess']['vtctld']['stderrthreshold'] = 1

# string The directory within the vtdataroot to store vttablet/mysql files. Defaults to being generated by the tablet uid.
default['vinted-vitess']['vtctld']['tablet']['dir'] = nil

# string the server ca to use to validate servers when connecting
default['vinted-vitess']['vtctld']['tablet']['grpc']['ca'] = nil

# string the cert to use to connect
default['vinted-vitess']['vtctld']['tablet']['grpc']['cert'] = nil

# string the key to use to connect
default['vinted-vitess']['vtctld']['tablet']['grpc']['key'] = nil

# string the server name to use to validate server certificate
default['vinted-vitess']['vtctld']['tablet']['grpc']['server']['name'] = nil

# duration close streaming tablet health connection if there are no requests for this long (default 5m0s)
default['vinted-vitess']['vtctld']['tablet']['health']['keep']['alive'] = '5m0s'

# string the server ca to use to validate servers when connecting
default['vinted-vitess']['vtctld']['tablet']['manager']['grpc']['ca'] = nil

# string the cert to use to connect
default['vinted-vitess']['vtctld']['tablet']['manager']['grpc']['cert'] = nil

# int concurrency to use to talk to a vttablet server for performance-sensitive RPCs (like ExecuteFetchAs{Dba,AllPrivs,App}) (default 8)
default['vinted-vitess']['vtctld']['tablet']['manager']['grpc']['concurrency'] = 8

# string the key to use to connect
default['vinted-vitess']['vtctld']['tablet']['manager']['grpc']['key'] = nil

# string the server name to use to validate server certificate
default['vinted-vitess']['vtctld']['tablet']['manager']['grpc']['server']['name'] = nil

# string the protocol to use to talk to vttablet (default "grpc")
default['vinted-vitess']['vtctld']['tablet']['manager']['protocol'] = 'grpc'

# string how to talk to the vttablets (default "grpc")
default['vinted-vitess']['vtctld']['tablet']['protocol'] = 'grpc'

# string format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how to customize this. (default "http://{{.GetTabletHostPort}}")
default['vinted-vitess']['vtctld']['tablet']['url']['template'] = 'http://{{.GetTabletHostPort}}'

# string the server ca to use to validate servers when connecting
default['vinted-vitess']['vtctld']['throttler']['client']['grpc']['ca'] = nil

# string the cert to use to connect
default['vinted-vitess']['vtctld']['throttler']['client']['grpc']['cert'] = nil

# string the key to use to connect
default['vinted-vitess']['vtctld']['throttler']['client']['grpc']['key'] = nil

# string the server name to use to validate server certificate
default['vinted-vitess']['vtctld']['throttler']['client']['grpc']['server']['name'] = nil

# string the protocol to use to talk to the integrated throttler service (default "grpc")
default['vinted-vitess']['vtctld']['throttler']['client']['protocol'] = 'grpc'

# duration time of the long poll for watch queries. Interrupting a watch may wait for up to that time. (default 30s)
default['vinted-vitess']['vtctld']['topo']['consul']['watch']['poll']['duration'] = '30s'

# int Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going. (default 30)
default['vinted-vitess']['vtctld']['topo']['etcd']['lease']['ttl'] = 30

# string the path of the global topology data in the global topology server
default['vinted-vitess']['vtctld']['topo']['global']['root'] = nil

# string the address of the global topology server
default['vinted-vitess']['vtctld']['topo']['global']['server']['address'] = nil

# string the topology implementation to use (default "zookeeper")
default['vinted-vitess']['vtctld']['topo']['implementation'] = 'zookeeper'

# duration zk base timeout (see zk.Connect) (default 30s)
default['vinted-vitess']['vtctld']['topo']['zk']['base']['timeout'] = '30s'

# int maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vinted-vitess']['vtctld']['topo']['zk']['max']['concurrency'] = 64

# string the server ca to use to validate servers when connecting to the zk topo server
default['vinted-vitess']['vtctld']['topo']['zk']['tls']['ca'] = nil

# string the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
default['vinted-vitess']['vtctld']['topo']['zk']['tls']['cert'] = nil

# string the key to use to connect to the zk topo server, enables TLS
default['vinted-vitess']['vtctld']['topo']['zk']['tls']['key'] = nil

# value comma-separated list of pattern=N settings for file-filtered logging
default['vinted-vitess']['vtctld']['vmodule'] = nil

# string the protocol to use to talk to the vtctl server (default "grpc")
default['vinted-vitess']['vtctld']['vtctl']['client']['protocol'] = 'grpc'

# Controls the display of the CRUD topology actions in the vtctld UI. (default true)
default['vinted-vitess']['vtctld']['vtctld']['show']['topology']['crud'] = true

# duration delay before retrying a failed healthcheck (default 5s)
default['vinted-vitess']['vtctld']['vtctl']['healthcheck']['retry']['delay'] = '5s'

# duration the health check timeout period (default 1m0s)
default['vinted-vitess']['vtctld']['vtctl']['healthcheck']['timeout'] = '1m0s'

# duration refresh interval for re-reading the topology (default 30s)
default['vinted-vitess']['vtctld']['vtctl']['healthcheck']['topology']['refresh'] = '30s'

# string the server ca to use to validate servers when connecting
default['vinted-vitess']['vtctld']['vtgate']['grpc']['ca'] = nil

# string the cert to use to connect
default['vinted-vitess']['vtctld']['vtgate']['grpc']['cert'] = nil

# string the key to use to connect
default['vinted-vitess']['vtctld']['vtgate']['grpc']['key'] = nil

# string the server name to use to validate server certificate
default['vinted-vitess']['vtctld']['vtgate']['grpc']['server']['name'] = nil

# string how to talk to vtgate (default "grpc")
default['vinted-vitess']['vtctld']['vtgate']['protocol'] = 'grpc'

# string the server ca to use to validate servers when connecting
default['vinted-vitess']['vtctld']['vtworker']['client']['grpc']['ca'] = nil

# string the cert to use to connect
default['vinted-vitess']['vtctld']['vtworker']['client']['grpc']['cert'] = nil

# string the key to use to connect
default['vinted-vitess']['vtctld']['vtworker']['client']['grpc']['key'] = nil

# string the server name to use to validate server certificate
default['vinted-vitess']['vtctld']['vtworker']['client']['grpc']['server']['name'] = nil

# string the protocol to use to talk to the vtworker server (default "grpc")
default['vinted-vitess']['vtctld']['vtworker']['client']['protocol'] = 'grpc'

# value log level for V logs
default['vinted-vitess']['vtctld']['v'] = nil

# duration time to wait before shutting the query service on old RDONLY tablets during MigrateServedTypes (default 5s)
default['vinted-vitess']['vtctld']['wait']['for']['drain']['sleep']['rdonly'] = '5s'

# duration time to wait before shutting the query service on old REPLICA tablets during MigrateServedTypes (default 15s)
default['vinted-vitess']['vtctld']['wait']['for']['drain']['sleep']['replica'] = '15s'

# string directory from which to serve vtctld2 web interface resources
default['vinted-vitess']['vtctld']['web']['dir2'] = nil

# string directory from which to serve vtctld web interface resources
default['vinted-vitess']['vtctld']['web']['dir'] = nil

# value comma separated list of workflow types to disable
default['vinted-vitess']['vtctld']['workflow']['manager']['disable'] = nil

# Initialize the workflow manager in this vtctld instance.
default['vinted-vitess']['vtctld']['workflow']['manager']['init'] = nil

# if specified, will use a topology server-based master election to ensure only one workflow manager is active at a time.
default['vinted-vitess']['vtctld']['workflow']['manager']['use']['election'] = nil

