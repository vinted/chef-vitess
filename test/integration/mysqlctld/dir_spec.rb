%w(
  /var/lib/vt
  /var/lib/vtdataroot
  /var/lib/vt/bin
  /var/lib/vt/config
  /var/lib/vt/config/mycnf
).each do |dir|
  describe directory(dir) do
    its('owner') { should eq 'vitess' }
    its('group') { should eq 'vitess' }
    its('mode') { should cmp '0750' }
    it { should exist }
  end
end
