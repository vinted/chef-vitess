case node['platform']
when 'redhat', 'centos', 'rocky'
  if node['platform_version'].to_i < 8
    execute 'rpm -Uhv https://repo.percona.com/yum/percona-release-latest.noarch.rpm' do
      creates '/etc/yum.repos.d/percona-original-release.repo'
    end
  else
    package 'findutils'
    execute 'rpm -Uhv https://repo.percona.com/yum/percona-release-latest.noarch.rpm' do
      creates '/etc/yum.repos.d/percona-prel-release.repo'
    end
    execute 'percona-release setup ps-57' do
      creates '/etc/yum.repos.d/percona-ps-57-release.repo'
    end
    execute 'dnf module disable mysql -y'
  end
when 'debian', 'ubuntu'
  package %w(curl software-properties-common)

  execute 'download mysql-apt-config' do
    command %(add-apt-repository 'https://repo.percona.com/apt/percona-release_latest.xenial_all.deb')
    action :run
  end

  apt_update 'update'
end

package 'Percona-Server-shared-57' do
  flush_cache [ :before ]
end
package 'Percona-Server-devel-57'
package 'Percona-Server-client-57'
package 'Percona-Server-server-57'
package 'Percona-Server-57-debuginfo'
package 'percona-xtrabackup-24'
