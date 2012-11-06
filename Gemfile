source 'http://rubygems.org'

gem 'rails'
gem 'jquery-rails'
gem 'devise'

gem 'haml-rails'
gem 'rails-backbone'
gem 'heroku'
#gem 'eventmachine', '1.0.0.rc.4'
#gem 'thin'

group :production do
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
end


group :development do
  gem 'rails_best_practices'
end

group :test, :development do
  gem 'sqlite3'
  gem 'pry-rails'
  gem 'spork'
#  gem 'ruby-debug19', :require => 'ruby-debug'
end

group :test do
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'email_spec'
end
