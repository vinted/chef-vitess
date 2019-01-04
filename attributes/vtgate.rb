# value Specifies the tablet types this vtgate is allowed to route queries to
# default['vinted-vitess']['vtgate']['allowed']['tablet']['types'] =

# log to standard error as well as files
# default['vinted-vitess']['vtgate']['alsologtostderr'] =

# int Maximum number of requests retried simultaneously. More concurrency will increase the load on the MASTER vttablet when draining the buffer. (default 1)
default['vinted-vitess']['vtgate']['buffer']['drain']['concurrency'] = 1

# string If not empty, limit buffering to these entries (comma separated). Entry format: keyspace or keyspace/shard. Requires --enable_buffer=true.
# default['vinted-vitess']['vtgate']['buffer']['keyspace']['shards'] =

# duration Stop buffering completely if a failover takes longer than this duration. (default 20s)
default['vinted-vitess']['vtgate']['buffer']['max']['failover']['duration'] = '20s'

# duration Minimum time between the end of a failover and the start of the next one (tracked per shard). Faster consecutive failovers will not trigger buffering. (default 1m0s)
default['vinted-vitess']['vtgate']['buffer']['min']['time']['between']['failovers'] = '1m0s'

# int Maximum number of buffered requests in flight (across all ongoing failovers). (default 10)
default['vinted-vitess']['vtgate']['buffer']['size'] = 10

# duration Duration for how long a request should be buffered at most. (default 10s)
default['vinted-vitess']['vtgate']['buffer']['window'] = '10s'

# string comma-separated list of cells for watching tablets
# default['vinted-vitess']['vtgate']['cells']['to']['watch'] =

# string cell to use (default "test_nj")
default['vinted-vitess']['vtgate']['cell'] = 'test_nj'

# string JSON File to read the topos/tokens from.
# default['vinted-vitess']['vtgate']['consul']['auth']['static']['file'] =

# string write cpu profile to file
# default['vinted-vitess']['vtgate']['cpu']['profile'] =

# value The default tablet type to set for queries, when one is not explicitly selected (default MASTER)
default['vinted-vitess']['vtgate']['default']['tablet']['type'] = 'MASTER'

# if specified, this process will not route any queries to local tablets in the local cell
# default['vinted-vitess']['vtgate']['disable']['local']['gateway'] =

# duration the replication lag that is considered too high when selecting the minimum num vttablets for serving (default 2h0m0s)
default['vinted-vitess']['vtgate']['discovery']['high']['replication']['lag']['minimum']['serving'] = '2h0m0s'

# duration the replication lag that is considered low enough to be healthy (default 30s)
default['vinted-vitess']['vtgate']['discovery']['low']['replication']['lag'] = '30s'

# true iff we should emit stats to push-based monitoring/stats backends
# default['vinted-vitess']['vtgate']['emit']['stats'] =

# Detect and log failover events, but do not actually buffer requests.
# default['vinted-vitess']['vtgate']['enable']['buffer']['dry']['run'] =

# Enable buffering (stalling) of master traffic during failovers.
# default['vinted-vitess']['vtgate']['enable']['buffer'] =

# if specified, this process will also expose a QueryService interface that allows other vtgates to talk through this vtgate to the underlying tablets.
# default['vinted-vitess']['vtgate']['enable']['forwarding'] =

# int gate server query cache size, maximum number of queries to be cached. vtgate analyzes every incoming query and generate a query plan, these plans are being cached in a lru cache. This config controls the capacity of the lru cache. (default 10000)
default['vinted-vitess']['vtgate']['gate']['query']['cache']['size'] = 10000

# string The implementation of gateway (default "discoverygateway")
default['vinted-vitess']['vtgate']['gateway']['implementation'] = 'discoverygateway'

# duration At startup, the gateway will wait up to that duration to get one tablet per keyspace/shard/tablettype (default 30s)
default['vinted-vitess']['vtgate']['gateway']['initial']['tablet']['timeout'] = '30s'

# string Which auth plugin implementation to use (eg: static)
# default['vinted-vitess']['vtgate']['grpc']['auth']['mode'] =

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
# default['vinted-vitess']['vtgate']['grpc']['auth']['static']['client']['creds'] =

# string JSON File to read the users/passwords from.
# default['vinted-vitess']['vtgate']['grpc']['auth']['static']['password']['file'] =

# string ca to use, requires TLS, and enforces client cert check
# default['vinted-vitess']['vtgate']['grpc']['ca'] =

# string certificate to use, requires grpc_key, enables TLS
# default['vinted-vitess']['vtgate']['grpc']['cert'] =

# string how to compress gRPC, default: nothing, supported: snappy
# default['vinted-vitess']['vtgate']['grpc']['compression'] =

# Enable GRPC tracing
# default['vinted-vitess']['vtgate']['grpc']['enable']['tracing'] =

# int grpc initial connection window size
# default['vinted-vitess']['vtgate']['grpc']['initial']['conn']['window']['size'] =

# int grpc initial window size
# default['vinted-vitess']['vtgate']['grpc']['initial']['window']['size'] =

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
# default['vinted-vitess']['vtgate']['grpc']['keepalive']['time'] =

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
# default['vinted-vitess']['vtgate']['grpc']['keepalive']['timeout'] =

# string key to use, requires grpc_cert, enables TLS
# default['vinted-vitess']['vtgate']['grpc']['key'] =

# duration Maximum age of a client connection before GoAway is sent. (default 2562047h47m16.854775807s)
default['vinted-vitess']['vtgate']['grpc']['max']['connection']['age'] = '2562047h47m16.854775807s'

# duration Additional grace period after grpc_max_connection_age, after which connections are forcibly closed. (default 2562047h47m16.854775807s)
default['vinted-vitess']['vtgate']['grpc']['max']['connection']['age']['grace'] = '2562047h47m16.854775807s'

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vinted-vitess']['vtgate']['grpc']['max']['message']['size'] = 16777216

# int Port to listen on for gRPC calls
# default['vinted-vitess']['vtgate']['grpc']['port'] =

# Enable gRPC monitoring with Prometheus
# default['vinted-vitess']['vtgate']['grpc']['prometheus'] =

# int grpc server initial connection window size
# default['vinted-vitess']['vtgate']['grpc']['server']['initial']['conn']['window']['size'] =

# int grpc server initial window size
# default['vinted-vitess']['vtgate']['grpc']['server']['initial']['window']['size'] =

# duration grpc server minimum keepalive time (default 5m0s)
default['vinted-vitess']['vtgate']['grpc']['server']['keepalive']['enforcement']['policy']['min']['time'] = '5m0s'

# If set, and SSL is not used, will set the immediate caller id from the effective caller id's principal.
# default['vinted-vitess']['vtgate']['grpc']['use']['effective']['callerid'] =

# duration health check retry delay (default 2ms)
default['vinted-vitess']['vtgate']['healthcheck']['retry']['delay'] = '2ms'

# duration the health check timeout period (default 1m0s)
default['vinted-vitess']['vtgate']['healthcheck']['timeout'] = '1m0s'

# string the name of the influxdb database (default "vitess")
default['vinted-vitess']['vtgate']['influxdb']['database'] = 'vitess'

# string the influxdb host (with port) (default "localhost:8086")
default['vinted-vitess']['vtgate']['influxdb']['host'] = 'localhost:8086'

# string influxdb password (default "root")
default['vinted-vitess']['vtgate']['influxdb']['password'] = 'root'

# string influxdb username (default "root")
default['vinted-vitess']['vtgate']['influxdb']['username'] = 'root'

# duration keep logs for this long (zero to keep forever)
# default['vinted-vitess']['vtgate']['keep']['logs'] =

# value Specifies a comma-separated list of other l2 vtgate pools to connect to. These other vtgates must run with the --enable_forwarding flag
# default['vinted-vitess']['vtgate']['l2vtgate']['addrs'] =

# duration keep running at least this long after SIGTERM before stopping (default 50ms)
default['vinted-vitess']['vtgate']['lameduck']['period'] = '50ms'

# DEPRECATED: set this flag to true to get the legacy behavior: all transactions will need an explicit begin, and DMLs outside transactions will return an error.
# default['vinted-vitess']['vtgate']['legacy']['autocommit'] =

# duration timeout for acquiring topology locks (default 30s)
default['vinted-vitess']['vtgate']['lock']['timeout'] = '30s'

# value when logging hits line file:N, emit a stack trace
# default['vinted-vitess']['vtgate']['log']['backtrace']['at'] =

# string If non-empty, write log files in this directory
# default['vinted-vitess']['vtgate']['log']['dir'] =

# string Enable query logging to the specified file
# default['vinted-vitess']['vtgate']['log']['queries']['to']['file'] =

# log to standard error instead of files
# default['vinted-vitess']['vtgate']['logtostderr'] =

# int profile every n bytes allocated (default 524288)
default['vinted-vitess']['vtgate']['mem']['profile']['rate'] = 524288

# duration the amount of time to give for a vttablet to resume if it ends a message stream, usually because of a reparent. (default 30s)
default['vinted-vitess']['vtgate']['message']['stream']['grace']['period'] = '30s'

# int the minimum number of vttablets that will be continue to be used even with low replication lag (default 2)
default['vinted-vitess']['vtgate']['min']['number']['serving']['vttablets'] = 2

# int profile every n mutex contention events (see runtime.SetMutexProfileFraction)
# default['vinted-vitess']['vtgate']['mutex']['profile']['fraction'] =

# If set, the server will allow the use of a clear text password over non-SSL connections.
# default['vinted-vitess']['vtgate']['mysql']['allow']['clear']['text']['without']['tls'] =

# string Which auth server implementation to use. (default "static")
default['vinted-vitess']['vtgate']['mysql']['auth']['server']['impl'] = 'static'

# string JSON File to read the users/passwords from.
# default['vinted-vitess']['vtgate']['mysql']['auth']['server']['static']['file'] =

# string JSON representation of the users/passwords config.
# default['vinted-vitess']['vtgate']['mysql']['auth']['server']['static']['string'] =

# string JSON File from which to read LDAP server config.
# default['vinted-vitess']['vtgate']['mysql']['ldap']['auth']['config']['file'] =

# string JSON representation of LDAP server config.
# default['vinted-vitess']['vtgate']['mysql']['ldap']['auth']['config']['string'] =

# string client-side authentication method to use. Supported values: mysql_clear_password, dialog. (default "mysql_clear_password")
default['vinted-vitess']['vtgate']['mysql']['ldap']['auth']['method'] = 'mysql_clear_password'

# string Binds on this address when listening to MySQL binary protocol. Useful to restrict listening to 'localhost' only for instance.
# default['vinted-vitess']['vtgate']['mysql']['server']['bind']['address'] =

# int If set, also listen for MySQL binary protocol connections on this port. (default -1)
default['vinted-vitess']['vtgate']['mysql']['server']['port'] = -1

# duration mysql query timeout
# default['vinted-vitess']['vtgate']['mysql']['server']['query']['timeout'] =

# duration connection read timeout
# default['vinted-vitess']['vtgate']['mysql']['server']['read']['timeout'] =

# Reject insecure connections but only if mysql_server_ssl_cert and mysql_server_ssl_key are provided
# default['vinted-vitess']['vtgate']['mysql']['server']['require']['secure']['transport'] =

# string This option specifies the Unix socket file to use when listening for local connections. By default it will be empty and it won't listen to a unix socket
# default['vinted-vitess']['vtgate']['mysql']['server']['socket']['path'] =

# string Path to ssl CA for mysql server plugin SSL. If specified, server will require and validate client certs.
# default['vinted-vitess']['vtgate']['mysql']['server']['ssl']['ca'] =

# string Path to the ssl cert for mysql server plugin SSL
# default['vinted-vitess']['vtgate']['mysql']['server']['ssl']['cert'] =

# string Path to ssl key for mysql server plugin SSL
# default['vinted-vitess']['vtgate']['mysql']['server']['ssl']['key'] =

# string MySQL server version to advertise. (default "5.5.10-Vitess")
default['vinted-vitess']['vtgate']['mysql']['server']['version'] = '5.5.10-Vitess'

# duration connection write timeout
# default['vinted-vitess']['vtgate']['mysql']['server']['write']['timeout'] =

# duration Warn if it takes more than the given threshold for a mysql connection to establish
# default['vinted-vitess']['vtgate']['mysql']['slow']['connect']['warn']['threshold'] =

# string Select tcp, tcp4, or tcp6 to control the socket type. (default "tcp")
default['vinted-vitess']['vtgate']['mysql']['tcp']['version'] = 'tcp'

# Rewrite queries with bind vars. Turn this off if the app itself sends normalized queries with bind vars. (default true)
default['vinted-vitess']['vtgate']['normalize']['queries'] = true

# duration wait no more than this for OnTermSync handlers before stopping (default 10s)
default['vinted-vitess']['vtgate']['onterm']['timeout'] = '10s'

# string URI of opentsdb /api/put method
# default['vinted-vitess']['vtgate']['opentsdb']['uri'] =

# string If set, the process will write its pid to the named file, and delete it on graceful shutdown.
# default['vinted-vitess']['vtgate']['pid']['file'] =

# int port for the server
# default['vinted-vitess']['vtgate']['port'] =

# duration how often try to remove old logs (default 1h0m0s)
default['vinted-vitess']['vtgate']['purge']['logs']['interval'] = '1h0m0s'

# string format for query logs ("text" or "json") (default "text")
default['vinted-vitess']['vtgate']['querylog']['format'] = 'text'

# redact full queries and bind variables from debug UI
# default['vinted-vitess']['vtgate']['redact']['debug']['ui']['queries'] =

# int retry count (default 2)
default['vinted-vitess']['vtgate']['retry']['count'] = 2

# string security policy to enforce for URLs
# default['vinted-vitess']['vtgate']['security']['policy'] =

# value comma separated list of services to enable (or disable if prefixed with '-') Example: grpc-vtworker
# default['vinted-vitess']['vtgate']['service']['map'] =

# int truncate queries in error logs to the given length (default unlimited)
default['vinted-vitess']['vtgate']['sql']['max']['length']['errors'] = 0

# int truncate queries in debug UIs to the given length (default 512) (default 512)
default['vinted-vitess']['vtgate']['sql']['max']['length']['ui'] = 512

# duration how frequently to refresh the topology for cached entries (default 1s)
default['vinted-vitess']['vtgate']['srv']['topo']['cache']['refresh'] = '1s'

# duration how long to use cached entries for topology (default 1s)
default['vinted-vitess']['vtgate']['srv']['topo']['cache']['ttl'] = '1s'

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vinted-vitess']['vtgate']['stats']['backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vinted-vitess']['vtgate']['stats']['emit']['period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vinted-vitess']['vtgate']['stderrthreshold'] = 1

# int the number of bytes sent from vtgate for each stream call. It's recommended to keep this value in sync with vttablet's query-server-config-stream-buffer-size. (default 32768)
default['vinted-vitess']['vtgate']['stream']['buffer']['size'] = 32768

# value Specifies a comma-separated list of 'keyspace|shard_name or keyrange' values to filter the tablets to watch
# default['vinted-vitess']['vtgate']['tablet']['filters'] =

# string the server ca to use to validate servers when connecting
# default['vinted-vitess']['vtgate']['tablet']['grpc']['ca'] =

# string the cert to use to connect
# default['vinted-vitess']['vtgate']['tablet']['grpc']['cert'] =

# string the key to use to connect
# default['vinted-vitess']['vtgate']['tablet']['grpc']['key'] =

# string the server name to use to validate server certificate
# default['vinted-vitess']['vtgate']['tablet']['grpc']['server']['name'] =

# string how to talk to the vttablets (default "grpc")
default['vinted-vitess']['vtgate']['tablet']['protocol'] = 'grpc'

# duration tablet refresh interval (default 1m0s)
default['vinted-vitess']['vtgate']['tablet']['refresh']['interval'] = '1m0s'

# tablet refresh reloads the tablet address/port map from topo in case it changes (default true)
default['vinted-vitess']['vtgate']['tablet']['refresh']['known']['tablets'] = true

# string wait till connected for specified tablet types during Gateway initialization
# default['vinted-vitess']['vtgate']['tablet']['types']['to']['wait'] =

# string format string describing debug tablet url formatting. See the Go code for getTabletDebugURL() how to customize this. (default "http://{{.GetTabletHostPort}}")
default['vinted-vitess']['vtgate']['tablet']['url']['template'] = 'http://{{.GetTabletHostPort}}'

# duration time of the long poll for watch queries. Interrupting a watch may wait for up to that time. (default 30s)
default['vinted-vitess']['vtgate']['topo']['consul']['watch']['poll']['duration'] = '30s'

# int Lease TTL for locks and master election. The client will use KeepAlive to keep the lease going. (default 30)
default['vinted-vitess']['vtgate']['topo']['etcd']['lease']['ttl'] = 30

# string the path of the global topology data in the global topology server
# default['vinted-vitess']['vtgate']['topo']['global']['root'] =

# string the address of the global topology server
# default['vinted-vitess']['vtgate']['topo']['global']['server']['address'] =

# string the topology implementation to use (default "zookeeper")
default['vinted-vitess']['vtgate']['topo']['implementation'] = 'zookeeper'

# int concurrent topo reads (default 32)
default['vinted-vitess']['vtgate']['topo']['read']['concurrency'] = 32

# duration zk base timeout (see zk.Connect) (default 30s)
default['vinted-vitess']['vtgate']['topo']['zk']['base']['timeout'] = '30s'

# int maximum number of pending requests to send to a Zookeeper server. (default 64)
default['vinted-vitess']['vtgate']['topo']['zk']['max']['concurrency'] = 64

# string the server ca to use to validate servers when connecting to the zk topo server
# default['vinted-vitess']['vtgate']['topo']['zk']['tls']['ca'] =

# string the cert to use to connect to the zk topo server, requires topo_zk_tls_key, enables TLS
# default['vinted-vitess']['vtgate']['topo']['zk']['tls']['cert'] =

# string the key to use to connect to the zk topo server, enables TLS
# default['vinted-vitess']['vtgate']['topo']['zk']['tls']['key'] =

# string SINGLE: disallow multi-db transactions, MULTI: allow multi-db transactions with best effort commit, TWOPC: allow multi-db transactions with 2pc commit (default "MULTI")
default['vinted-vitess']['vtgate']['transaction']['mode'] = 'MULTI'

# value comma-separated list of pattern=N settings for file-filtered logging
# default['vinted-vitess']['vtgate']['vmodule'] =

# string List of users authorized to execute vschema ddl operations, or '%' to allow all users.
# default['vinted-vitess']['vtgate']['vschema']['ddl']['authorized']['users'] =

# string address of a vtctld instance
# default['vinted-vitess']['vtgate']['vtctld']['addr'] =

# prevent bind vars from escaping in returned errors
# default['vinted-vitess']['vtgate']['vtgate']['config']['terse']['errors'] =

# value log level for V logs
# default['vinted-vitess']['vtgate']['v'] =

