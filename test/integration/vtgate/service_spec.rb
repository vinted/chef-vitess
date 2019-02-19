describe service('vtgate') do
  it { should be_installed }
  it { should be_enabled }
  # Tested in `cluster` suite due to requirements to run mysqlctld,
  # vtgate, MySQL, Zookeeper
  # it { should be_running }
end
