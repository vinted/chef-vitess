# duration timeout for the total command (default 1h0m0s)
default['vitess']['vtctlclient']['action']['timeout'] = '1h0m0s'

# log to standard error as well as files
default['vitess']['vtctlclient']['alsologtostderr'] = nil

# true iff we should emit stats to push-based monitoring/stats backends
default['vitess']['vtctlclient']['emit']['stats'] = nil

# string when using grpc_static_auth in the server, this file provides the credentials to use to authenticate with server
default['vitess']['vtctlclient']['grpc']['auth']['static']['client']['creds'] = nil

# string how to compress gRPC, default: nothing, supported: snappy
default['vitess']['vtctlclient']['grpc']['compression'] = nil

# Enable GRPC tracing
default['vitess']['vtctlclient']['grpc']['enable']['tracing'] = nil

# int grpc initial connection window size
default['vitess']['vtctlclient']['grpc']['initial']['conn']['window']['size'] = nil

# int grpc initial window size
default['vitess']['vtctlclient']['grpc']['initial']['window']['size'] = nil

# duration After a duration of this time if the client doesn't see any activity it pings the server to see if the transport is still alive.
default['vitess']['vtctlclient']['grpc']['keepalive']['time'] = nil

# duration After having pinged for keepalive check, the client waits for a duration of Timeout and if no activity is seen even after that the connection is closed.
default['vitess']['vtctlclient']['grpc']['keepalive']['timeout'] = nil

# int Maximum allowed RPC message size. Larger messages will be rejected by gRPC with the error 'exceeding the max size'. (default 16777216)
default['vitess']['vtctlclient']['grpc']['max']['message']['size'] = 16777216

# Enable gRPC monitoring with Prometheus
default['vitess']['vtctlclient']['grpc']['prometheus'] = nil

# duration keep logs for this long (zero to keep forever)
default['vitess']['vtctlclient']['keep']['logs'] = nil

# value when logging hits line file:N, emit a stack trace
default['vitess']['vtctlclient']['log']['backtrace']['at'] = nil

# string If non-empty, write log files in this directory
default['vitess']['vtctlclient']['log']['dir'] = nil

# log to standard error instead of files
default['vitess']['vtctlclient']['logtostderr'] = nil

# duration how often try to remove old logs (default 1h0m0s)
default['vitess']['vtctlclient']['purge']['logs']['interval'] = '1h0m0s'

# string server to use for connection
default['vitess']['vtctlclient']['server'] = nil

# string The name of the registered push-based monitoring/stats backend to use (default "influxdb")
default['vitess']['vtctlclient']['stats']['backend'] = 'influxdb'

# duration Interval between emitting stats to all registered backends (default 1m0s)
default['vitess']['vtctlclient']['stats']['emit']['period'] = '1m0s'

# value logs at or above this threshold go to stderr (default 1)
default['vitess']['vtctlclient']['stderrthreshold'] = 1

# value comma-separated list of pattern=N settings for file-filtered logging
default['vitess']['vtctlclient']['vmodule'] = nil

# string the protocol to use to talk to the vtctl server (default "grpc")
default['vitess']['vtctlclient']['vtctl']['client']['protocol'] = 'grpc'

# string the server ca to use to validate servers when connecting
default['vitess']['vtctlclient']['vtctld']['grpc']['ca'] = nil

# string the cert to use to connect
default['vitess']['vtctlclient']['vtctld']['grpc']['cert'] = nil

# string the key to use to connect
default['vitess']['vtctlclient']['vtctld']['grpc']['key'] = nil

# string the server name to use to validate server certificate
default['vitess']['vtctlclient']['vtctld']['grpc']['server']['name'] = nil

# value log level for V logs
default['vitess']['vtctlclient']['v'] = nil

