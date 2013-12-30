source 'https://rubygems.org'

gemspec
gem 'rails', '4.0.0'
gem 'resque', :git => 'https://github.com/resque/resque.git', :branch => "master"

gem 'sqlite3', :platforms => :ruby
gem 'activerecord-jdbcsqlite3-adapter', :platforms => :jruby

group :development, :test do
  gem "dotenv-rails"
  gem "rdoc"
end

group :test do
  gem 'minitest-spec-rails'
  gem 'coveralls', :require => false
  gem 'redcard'
  gem "mocha", :require => false
end


group :assets do
  gem 'uglifier', '>= 1.0.3'

  gem 'libv8',        '3.11.8.13', :platforms => :ruby
  gem 'therubyracer', '~> 0.11.4', :platforms => :ruby
  gem 'therubyrhino', '2.0.2',     :platforms => :jruby
end
