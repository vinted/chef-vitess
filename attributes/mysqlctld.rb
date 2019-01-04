# log to standard error as well as files
# default['vinted-vitess']['mysqlctld']['alsologtostderr'] =

# duration Idle timeout for app connections (default 1m0s)
default['vinted-vitess']['mysqlctld']['app']['idle']['timeout'] = '1m0s'

# int Size of the connection pool for app connections (default 40)
default['vinted-vitess']['mysqlctld']['app']['pool']['size'] = 40

# int if backup_storage_compress is true, backup_storage_block_size sets the byte size for each block while compressing (default is 250000). (default 250000)
default['vinted-vitess']['mysqlctld']['backup']['storage']['block']['size'] = 250000

# if set, the backup files will be compressed (default is true). Set to false for instance if a backup_storage_hook is specified and it compresses the data. (default true)
default['vinted-vitess']['mysqlctld']['backup']['storage']['compress'] = true

# string if set, we send the contents of the backup files through this hook.
# default['vinted-vitess']['mysqlctld']['backup']['storage']['hook'] =

# string which implementation to use for the backup storage feature
# default['vinted-vitess']['mysqlctld']['backup']['storage']['implementation'] =

# int if backup_storage_compress is true, backup_storage_number_blocks sets the number of blocks that can be processed, at once, before the writer blocks, during compression (default is 2). It should be equal to the number of CPUs available for compression (default 2)
default['vinted-vitess']['mysqlctld']['backup']['storage']['number']['blocks'] = 2

# string write cpu profile to file
# default['vinted-vitess']['mysqlctld']['cpu']['profile'] =

# duration Idle timeout for dba connections (default 1m0s)
default['vinted-vitess']['mysqlctld']['dba']['idle']['timeout'] = '1m0s'

# int Size of the connection pool for dba connections (default 20)
default['vinted-vitess']['mysqlctld']['dba']['pool']['size'] = 20

# string Character set. Only utf8 or latin1 based character sets are supported. (default "utf8")
default['vinted-vitess']['mysqlctld']['db']['charset'] = 'utf8'

# string db credentials file
# default['vinted-vitess']['mysqlctld']['db']['credentials']['file'] =

# string db credentials server type (use 'file' for the file implementation) (default "file")
default['vinted-vitess']['mysqlctld']['db']['credentials']['server'] = 'file'

# string db dba password
# default['vinted-vitess']['mysqlctld']['db']['dba']['password'] =

# string db dba user userKey (default "vt_dba")
default['vinted-vitess']['mysqlctld']['db']['dba']['user'] = 'vt_dba'

# Set this flag to false to make the dba connection to not use ssl (default true)
default['vinted-vitess']['mysqlctld']['db']['dba']['use']['ssl'] = true

# uint Flag values as defined by MySQL.
# default['vinted-vitess']['mysqlctld']['db']['flags'] =

# string The host name for the tcp connection.
# default['vinted-vitess']['mysqlctld']['db']['host'] =

# int tcp port
# default['vinted-vitess']['mysqlctld']['db']['port'] =

# string The unix socket to connect on. If this is specifed, host and port will not be used.
# default['vinted-vitess']['mysqlctld']['db']['socket'] =

# string connection ssl ca path
# default['vinted-vitess']['mysqlctld']['db']['ssl']['ca']['path'] =

# string connection ssl ca
# default['vinted-vitess']['mysqlctld']['db']['ssl']['ca'] =

# string connection ssl certificate
# default['vinted-vitess']['mysqlctld']['db']['ssl']['cert'] =

# string connection ssl key
# default['vinted-vitess']['mysqlctld']['db']['ssl']['key'] =

# if set, do not allow active reparents. Use this to protect a cluster using external reparents.
# default['vinted-vitess']['mysqlctld']['disable']['active']['reparents'] =

# true iff we should emit stats to push-based monitoring/stats backends
# default['vinted-vitess']['mysqlctld']['emit']['stats'] =

# string Which auth plugin implementation to use (eg: static)
# default['vinted-vitess']['mysqlctld']['grpc']['auth']['mode'] =

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
# default['vinted-vitess']['mysqlctld']['grpc']['auth']['static']['client']['creds'] =

# string JSON File to read the users/passwords from.
# default['vinted-vitess']['mysqlctld']['grpc']['auth']['static']['password']['file'] =

# string ca to use, requires TLS, and enforces client cert check
# default['vinted-vitess']['mysqlctld']['grpc']['ca'] =

# string certificate to use, requires grpc_key, enables TLS
# default['vinted-vitess']['mysqlctld']['grpc']['cert'] =

# string how to compress gRPC, default: nothing, supported: snappy
# default['vinted-vitess']['mysqlctld']['grpc']['compression'] =

# Enable GRPC tracing
# default['vinted-vitess']['mysqlctld']['grpc']['enable']['tracing'] =

# int grpc initial connection window size
# default['vinted-vitess']['mysqlctld']['grpc']['initial']['conn']['window']['size'] =

# int grpc initial window size
# default['vinted-vitess']['mysqlctld']['grpc']['initial']['window']['size'] =

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
# default['vinted-vitess']['mysqlctld']['grpc']['keepalive']['time'] =

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
# default['vinted-vitess']['mysqlctld']['grpc']['keepalive']['timeout'] =

# string key to use, requires grpc_cert, enables TLS
# default['vinted-vitess']['mysqlctld']['grpc']['key'] =

# duration Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vinted-vitess']['mysqlctld']['grpc']['max']['connection']['age'] = '2562047h47m16.854775807s'

# duration Additional grace period after grpc_max_connection_age, after which connections are forcibly closed. (default 2562047h47m16.854775807s)
default['vinted-vitess']['mysqlctld']['grpc']['max']['connection']['age']['grace'] = '2562047h47m16.854775807s'

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vinted-vitess']['mysqlctld']['grpc']['max']['message']['size'] = 16777216

# int Port to listen on for gRPC calls
# default['vinted-vitess']['mysqlctld']['grpc']['port'] =

# Enable gRPC monitoring with Prometheus
# default['vinted-vitess']['mysqlctld']['grpc']['prometheus'] =

# int grpc server initial connection window size
# default['vinted-vitess']['mysqlctld']['grpc']['server']['initial']['conn']['window']['size'] =

# int grpc server initial window size
# default['vinted-vitess']['mysqlctld']['grpc']['server']['initial']['window']['size'] =

# duration grpc server minimum keepalive time (default 5m0s)
default['vinted-vitess']['mysqlctld']['grpc']['server']['keepalive']['enforcement']['policy']['min']['time'] = '5m0s'

# string the name of the influxdb database (default "vitess")
default['vinted-vitess']['mysqlctld']['influxdb']['database'] = 'vitess'

# string the influxdb host (with port) (default "localhost:8086")
default['vinted-vitess']['mysqlctld']['influxdb']['host'] = 'localhost:8086'

# string influxdb password (default "root")
default['vinted-vitess']['mysqlctld']['influxdb']['password'] = 'root'

# string influxdb username (default "root")
default['vinted-vitess']['mysqlctld']['influxdb']['username'] = 'root'

# string path to .sql file to run after mysql_install_db
# default['vinted-vitess']['mysqlctld']['init']['db']['sql']['file'] =

# duration keep logs for this long (zero to keep forever)
# default['vinted-vitess']['mysqlctld']['keep']['logs'] =

# duration keep running at least this long after SIGTERM before stopping (default 50ms)
default['vinted-vitess']['mysqlctld']['lameduck']['period'] = '50ms'

# value when logging hits line file:N, emit a stack trace
# default['vinted-vitess']['mysqlctld']['log']['backtrace']['at'] =

# string If non-empty, write log files in this directory
# default['vinted-vitess']['mysqlctld']['log']['dir'] =

# log to standard error instead of files
# default['vinted-vitess']['mysqlctld']['logtostderr'] =

# duration how long to wait in between slave -> connection attempts. Only precise to the second. (default 10s)
default['vinted-vitess']['mysqlctld']['master']['connect']['retry'] = '10s'

# int profile every n bytes allocated (default 524288)
default['vinted-vitess']['mysqlctld']['mem']['profile']['rate'] = 524288

# int profile every n mutex contention events (see runtime.SetMutexProfileFraction)
# default['vinted-vitess']['mysqlctld']['mutex']['profile']['fraction'] =

# string JSON File to read the users/passwords from.
# default['vinted-vitess']['mysqlctld']['mysql']['auth']['server']['static']['file'] =

# string JSON representation of the users/passwords config.
# default['vinted-vitess']['mysqlctld']['mysql']['auth']['server']['static']['string'] =

# string the protocol to use to talk to the mysqlctl server (default "grpc")
default['vinted-vitess']['mysqlctld']['mysqlctl']['client']['protocol'] = 'grpc'

# string template file to use for generating the my.cnf file during server init
# default['vinted-vitess']['mysqlctld']['mysqlctl']['mycnf']['template'] =

# string socket file to use for remote mysqlctl actions (empty for local actions)
# default['vinted-vitess']['mysqlctld']['mysqlctl']['socket'] =

# int mysql port (default 3306)
default['vinted-vitess']['mysqlctld']['mysql']['port'] = 3306

# string path to the mysql socket
# default['vinted-vitess']['mysqlctld']['mysql']['socket'] =

# duration wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vinted-vitess']['mysqlctld']['onterm']['timeout'] = '10s'

# string If set, the process will write its pid to the named file, and delete it on graceful shutdown.
# default['vinted-vitess']['mysqlctld']['pid']['file'] =

# int port for the server
# default['vinted-vitess']['mysqlctld']['port'] =

# duration how often try to remove old logs (default 1h0m0s)
default['vinted-vitess']['mysqlctld']['purge']['logs']['interval'] = '1h0m0s'

# string security policy to enforce for URLs
# default['vinted-vitess']['mysqlctld']['security']['policy'] =

# value comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
# default['vinted-vitess']['mysqlctld']['service']['map'] =

# string Local unix socket file to listen on
# default['vinted-vitess']['mysqlctld']['socket']['file'] =

# int truncate queries in error logs to the given length (default unlimited)
default['vinted-vitess']['mysqlctld']['sql']['max']['length']['errors'] = 0

# int truncate queries in debug UIs to the given length (default 512) (default 512)
default['vinted-vitess']['mysqlctld']['sql']['max']['length']['ui'] = 512

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vinted-vitess']['mysqlctld']['stats']['backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vinted-vitess']['mysqlctld']['stats']['emit']['period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vinted-vitess']['mysqlctld']['stderrthreshold'] = 1

# string The directory within the vtdataroot to store vttablet/mysql files. Defaults to being generated by the tablet uid.
# default['vinted-vitess']['mysqlctld']['tablet']['dir'] =

# uint tablet uid (default 41983)
default['vinted-vitess']['mysqlctld']['tablet']['uid'] = 41983

# value comma-separated list of pattern=N settings for file-filtered logging
# default['vinted-vitess']['mysqlctld']['vmodule'] =

# value log level for V logs
# default['vinted-vitess']['mysqlctld']['v'] =

# duration how long to wait for mysqld startup or shutdown (default 5m0s)
default['vinted-vitess']['mysqlctld']['wait']['time'] = '5m0s'

