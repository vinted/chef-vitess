describe service('vttablet') do
  it { should be_installed }
  it { should be_enabled }
  # Tested in `cluster` suite due to requirements to run mysqlctld,
  # vtgate, MySQL, Zookeeper/ETCD
  # it { should be_running }
end
