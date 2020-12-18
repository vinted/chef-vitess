describe file('/var/lib/vt/bin/mysqlctld0.sh') do
  its('owner') { should eq 'vitess' }
  its('group') { should eq 'vitess' }
  its('mode') { should cmp '0750' }
  it { should exist }

  its('content') { should match '#!/bin/sh' }
  its('content') { should match 'exec /usr/local/bin/mysqlctld' }
end

describe file('/var/lib/vt/bin/vtgate.sh') do
  its('owner') { should eq 'vitess' }
  its('group') { should eq 'vitess' }
  its('mode') { should cmp '0750' }
  it { should exist }

  its('content') { should match '#!/bin/sh' }
  its('content') { should match 'exec /usr/local/bin/vtgate' }
end

describe file('/var/lib/vt/bin/vttablet0.sh') do
  its('owner') { should eq 'vitess' }
  its('group') { should eq 'vitess' }
  its('mode') { should cmp '0750' }
  it { should exist }

  its('content') { should match '#!/bin/sh' }
  its('content') { should match 'exec /usr/local/bin/vttablet' }
end
