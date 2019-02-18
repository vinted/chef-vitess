case node['platform']
when 'rhel', 'centos'
  execute 'rpm -Uhv https://repo.percona.com/yum/percona-release-latest.noarch.rpm' do
    creates '/etc/yum.repos.d/percona-original-release.repo'
  end
when 'debian', 'ubuntu'
  package %w[curl software-properties-common]

  execute 'download mysql-apt-config' do
    command %(add-apt-repository 'https://repo.percona.com/apt/percona-release_latest.xenial_all.deb')
    action :run
  end

  apt_update 'update'
end

package %w[
  Percona-Server-shared-57
  Percona-Server-devel-57
  Percona-Server-client-57
  Percona-Server-server-57
  Percona-Server-57-debuginfo
  percona-xtrabackup-24
]
