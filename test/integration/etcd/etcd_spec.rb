describe package('etcd') do
  it { should be_installed }
end

describe service('etcd') do
  it { should be_running }
end
