source 'http://rubygems.org'

gem 'rails', "~> 3.2.13"
gem 'jquery-rails'
gem 'devise'
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
  gem 'uglifier'
  gem "compass-rails"
end


group :development do
  gem 'rails_best_practices'
end

group :test, :development do
  gem 'pry-rails'
  gem 'spork'
  gem 'guard-cucumber'
  gem 'rb-fsevent'
  gem 'growl'
  gem 'spork-rails'
#  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :test do
  gem 'sqlite3'
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'email_spec'
end
