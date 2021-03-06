source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails", "~> 5.0" # rspec-rails is a testing framework for Rails 3+
  gem "rubocop", "~> 1.17", require: false # Automatic Ruby code style checking tool
  gem "rubocop-performance", "~> 1.11", require: false # A collection of RuboCop cops to check for performance optimizations in Ruby code
  gem "rubocop-rails", "~> 2.11", require: false # Automatic Rails code style checking tool
  gem "rubocop-rspec", "~> 2.4", require: false # Code style checking for RSpec files
  gem "faker"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
  gem "factory_bot_rails", "~> 6.2" # factory_bot is a fixtures replacement with a straightforward definition syntax, support for multiple build strategies
  gem 'shoulda-matchers', '~> 5.0'
  gem 'pundit-matchers', '~> 1.7.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "devise", "~> 4.8" # Flexible authentication solution for Rails
gem "friendly_id", "~> 5.4.0"
gem "simple_form"
gem "aws-sdk-s3", require: false
gem "active_storage_validations"
gem "mini_magick", ">= 4.9.5"
gem "font-awesome-sass", "~> 5.15.1"
gem "rolify", "~> 6.0" # Very simple Roles library
gem "pundit", '~> 2.1' # Object oriented authorization for Rails applications
gem "omniauth", "~> 2.0" # A generalized Rack framework for multiple-provider authentication
gem "omniauth-facebook", "~> 8.0" # OmniAuth strategy for Facebook
gem "omniauth-rails_csrf_protection", "~> 1.0" # Provides CSRF protection on OmniAuth request endpoint on Rails application.