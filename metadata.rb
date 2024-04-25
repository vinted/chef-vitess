name 'vitess'
maintainer 'Vinted SRE'
maintainer_email 'sre@vinted.com'
license 'MIT'
description 'Installs/Configures Vitess database clustering system.'
issues_url 'https://github.com/vinted/chef-vitess/issues'
source_url 'https://github.com/vinted/chef-vitess'
chef_version '>= 15.5'
version '5.6.0'

supports 'redhat'
supports 'centos'
supports 'ubuntu'
supports 'debian'
supports 'rocky'

depends 'poise', '~> 2.8.2'
depends 'systemd', '~> 3.2.4'
depends 'ulimit', '~> 1.0.0'
