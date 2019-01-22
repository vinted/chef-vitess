name 'test-vitess'
maintainer 'Vinted SRE'
maintainer_email 'sre@vinted.com'
license 'MIT'
description 'Tests Vitess'
chef_version '>= 12.1' if respond_to?(:chef_version)
issues_url 'https://github.com/vinted/chef-vitess/issues'
source_url 'https://github.com/vinted/chef-vitess'
version '0.1.0'

depends 'mysql', '~> 8.5.1'
depends 'yum-mysql-community'
