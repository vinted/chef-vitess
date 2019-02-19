case node['platform']
when 'rhel', 'centos'
  execute 'rpm -Uhv https://archive.cloudera.com/cdh5/one-click-install/redhat/7/x86_64/cloudera-cdh-5-0.x86_64.rpm' do
    creates '/etc/yum.repos.d/cloudera-cdh5.repo'
  end
when 'debian', 'ubuntu'
  package %w[wget software-properties-common]

  execute 'download mysql-apt-config' do
    command %(wget 'https://archive.cloudera.com/cdh5/ubuntu/trusty/amd64/cdh/cloudera.list' -O /etc/apt/sources.list.d/cloudera.list)
    action :run
  end

  apt_update 'update'
end

package %w[java-1.8.0-openjdk zookeeper]

# dirty way to start zookeeper
execute 'start zookeeper' do
  command '/usr/lib/zookeeper/bin/zkServer.sh start'
  creates '/var/lib/zookeeper/zookeeper_server.pid'
  action :run
end
