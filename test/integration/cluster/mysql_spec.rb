%w[
  Percona-Server-shared-57
  Percona-Server-devel-57
  Percona-Server-client-57
  Percona-Server-server-57
  Percona-Server-57-debuginfo
  percona-xtrabackup-24
].each do |package|
  describe package(package) do
    it { should be_installed }
  end
end
