# duration timeout for the total command (default 1h0m0s)
default['vinted-vitess']['vtctlclient']['action']['timeout'] = '1h0m0s'

# log to standard error as well as files
# default['vinted-vitess']['vtctlclient']['alsologtostderr'] =

# true iff we should emit stats to push-based monitoring/stats backends
# default['vinted-vitess']['vtctlclient']['emit']['stats'] =

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
# default['vinted-vitess']['vtctlclient']['grpc']['auth']['static']['client']['creds'] =

# string how to compress gRPC, default: nothing, supported: snappy
# default['vinted-vitess']['vtctlclient']['grpc']['compression'] =

# Enable GRPC tracing
# default['vinted-vitess']['vtctlclient']['grpc']['enable']['tracing'] =

# int grpc initial connection window size
# default['vinted-vitess']['vtctlclient']['grpc']['initial']['conn']['window']['size'] =

# int grpc initial window size
# default['vinted-vitess']['vtctlclient']['grpc']['initial']['window']['size'] =

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
# default['vinted-vitess']['vtctlclient']['grpc']['keepalive']['time'] =

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
# default['vinted-vitess']['vtctlclient']['grpc']['keepalive']['timeout'] =

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vinted-vitess']['vtctlclient']['grpc']['max']['message']['size'] = 16777216

# Enable gRPC monitoring with Prometheus
# default['vinted-vitess']['vtctlclient']['grpc']['prometheus'] =

# duration keep logs for this long (zero to keep forever)
# default['vinted-vitess']['vtctlclient']['keep']['logs'] =

# value when logging hits line file:N, emit a stack trace
# default['vinted-vitess']['vtctlclient']['log']['backtrace']['at'] =

# string If non-empty, write log files in this directory
# default['vinted-vitess']['vtctlclient']['log']['dir'] =

# log to standard error instead of files
# default['vinted-vitess']['vtctlclient']['logtostderr'] =

# duration how often try to remove old logs (default 1h0m0s)
default['vinted-vitess']['vtctlclient']['purge']['logs']['interval'] = '1h0m0s'

# string server to use for connection
# default['vinted-vitess']['vtctlclient']['server'] =

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vinted-vitess']['vtctlclient']['stats']['backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vinted-vitess']['vtctlclient']['stats']['emit']['period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vinted-vitess']['vtctlclient']['stderrthreshold'] = 1

# value comma-separated list of pattern=N settings for file-filtered logging
# default['vinted-vitess']['vtctlclient']['vmodule'] =

# string the protocol to use to talk to the vtctl server (default "grpc")
default['vinted-vitess']['vtctlclient']['vtctl']['client']['protocol'] = 'grpc'

# string the server ca to use to validate servers when connecting
# default['vinted-vitess']['vtctlclient']['vtctld']['grpc']['ca'] =

# string the cert to use to connect
# default['vinted-vitess']['vtctlclient']['vtctld']['grpc']['cert'] =

# string the key to use to connect
# default['vinted-vitess']['vtctlclient']['vtctld']['grpc']['key'] =

# string the server name to use to validate server certificate
# default['vinted-vitess']['vtctlclient']['vtctld']['grpc']['server']['name'] =

# value log level for V logs
# default['vinted-vitess']['vtctlclient']['v'] =

