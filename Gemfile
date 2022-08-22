source 'https://rubygems.org'
cinc_gem_source = 'https://packagecloud.io/cinc-project/stable'

group :lint do
  gem 'cookstyle'
  gem 'foodcritic', '~> 6.0'
end

group :unit do
  gem 'berkshelf'
  gem 'chef-sugar'
  gem 'chefspec', '>= 4.2'
end

group :kitchen_common do
  gem 'json', '<=2.4.1'
  gem 'kitchen-docker'
  gem 'kitchen-inspec'
  gem 'test-kitchen'
end
