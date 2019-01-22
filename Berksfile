# frozen_string_literal: true
source 'https://supermarket.chef.io'

metadata

cookbook 'poise', '~> 2.8.2'
cookbook 'systemd', '~> 3.2.4'

group 'test' do
  cookbook 'test-vitess', path: 'test/integration/cookbooks/test-vitess'
end
