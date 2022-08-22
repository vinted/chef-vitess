if (node['platform_version'].to_i == 8) && platform?('rocky')
  execute 'sudo rpm -Uhv https://cbs.centos.org/kojifiles/packages/etcd/3.2.21/2.el8/x86_64/etcd-3.2.21-2.el8.x86_64.rpm' do
    creates '/usr/bin/etcd'
  end
else
  package 'etcd'
end

service 'etcd' do
  action :start
end
