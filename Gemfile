source 'http://rubygems.org'

gem 'rails', "~> 3.2.13"
gem 'jquery-rails'
gem 'devise', '~> 2.2.3'
gem 'rabl'

gem 'haml-rails'
gem 'rails-backbone'
gem 'heroku'
#gem 'thin'
gem "foreman"
gem "high_voltage"
gem 'kramdown'
gem 'haml-kramdown', :github => 'doolin/haml-kramdown'

group :production, :development do
  gem 'pg'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem "compass-rails"
end


group :development do
  gem 'rails_best_practices'
end

group :test, :development do
  gem 'pry-rails'
  gem 'spork'
  gem 'guard-cucumber'
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'growl'
  gem 'spork-rails'
#  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :test do
  gem 'sqlite3'
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem 'rspec-rails', '~> 2.12.2'
  gem 'factory_girl_rails', '~> 4.2.0'
end
