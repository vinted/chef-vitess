name 'vitess'
maintainer 'Vinted SRE'
maintainer_email 'sre@vinted.com'
license 'MIT'
description 'Installs/Configures Vitess database clustering system.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url 'https://github.com/vinted/chef-vitess/issues'
source_url 'https://github.com/vinted/chef-vitess'
chef_version '>= 12.1' if respond_to?(:chef_version)
version '0.2.0'

supports 'redhat'
supports 'centos'
supports 'ubuntu'
supports 'debian'

depends 'poise', '~> 2.8.2'
depends 'systemd', '~> 3.2.4'
depends 'ulimit', '~> 1.0.0'
