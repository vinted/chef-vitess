case node['platform']
when 'rhel', 'centos'
  include_recipe 'yum-mysql-community::mysql57'
when 'debian', 'ubuntu'
  package %w[curl software-properties-common]

  execute 'download mysql-apt-config' do
    command %(add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe')
    action :run
  end

  apt_update 'update'
end

case node['platform']
when 'rhel', 'centos'
  package 'mysql-server'
when 'debian', 'ubuntu'
  package 'mysql-server-5.7'
end
