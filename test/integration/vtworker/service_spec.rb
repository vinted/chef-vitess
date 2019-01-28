describe service('vtworker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe file('/var/lib/vt/bin/vtworker.sh') do
  its('owner') { should eq 'vitess' }
  its('group') { should eq 'vitess' }
  its('mode') { should cmp '0750' }
  it { should exist }
end
