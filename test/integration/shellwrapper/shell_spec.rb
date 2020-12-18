describe file('/usr/local/bin/vtctl-ApplySchema') do
  its('owner') { should eq 'vitess' }
  its('group') { should eq 'vitess' }
  its('mode') { should cmp '0751' }
  it { should exist }

  its('content') { should match '#!/bin/sh' }
  its('content') { should match 'VTROOT=/var/lib/vt VTDATAROOT=/var/lib/vtdataroot MYSQL_FLAVOR=master_percona57 VT_MYSQL_ROOT=/ KITCHEN=1' }
  its('content') { should match '/usr/local/bin/vtctl' }
  its('content') { should_not match 'exec ' }
end

describe file('/usr/local/bin/vtctlclient-client') do
  its('owner') { should eq 'vitess' }
  its('group') { should eq 'vitess' }
  its('mode') { should cmp '0751' }
  it { should exist }

  its('content') { should match '#!/bin/sh' }
  its('content') { should match 'VTROOT=/var/lib/vt VTDATAROOT=/var/lib/vtdataroot MYSQL_FLAVOR=master_percona57 VT_MYSQL_ROOT=/ CLIENT=1 /usr/local/bin/vtctlclient vtctlclient' }
  its('content') { should_not match 'exec ' }
end

describe file('/usr/local/bin/mysqlctl-client') do
  its('owner') { should eq 'vitess' }
  its('group') { should eq 'vitess' }
  its('mode') { should cmp '0751' }
  it { should exist }

  its('content') { should match '#!/bin/sh' }
  its('content') { should match 'VTROOT=/var/lib/vt VTDATAROOT=/var/lib/vtdataroot MYSQL_FLAVOR=master_percona57 VT_MYSQL_ROOT=/ CL=1 /usr/local/bin/mysqlctl mysqlctl' }
  its('content') { should_not match 'exec ' }
end
