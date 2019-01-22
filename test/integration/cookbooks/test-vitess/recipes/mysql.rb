include_recipe 'test-vitess::setup'

case node['platform']
when 'rhel', 'centos'
  package 'mysql-server'
when 'debian', 'ubuntu'
  package 'mysql-server-5.7'
end
