source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# gem 'rails', '~> 5.2.0'
# gem "activerecord"
# gem "activemodel"
# gem "actionpack"
# gem "actionview"
# gem "actionmailer"
# gem "activejob"
# gem "activesupport"
# gem "railties"
# gem "sprockets-rails"

RAILS_VERSION = '~> 5.2.0'.freeze
%w[actioncable activerecord activemodel actionpack actionview activesupport railties activejob].each { |name| gem name, RAILS_VERSION }

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

# GraphQL
gem 'redis'
gem 'graphql'
gem 'graphql-rails_logger'
gem 'graphiql-rails'

# Random names
gem 'faker'

group :development, :test do
  # Debugging
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'

  # Linting
  gem 'rubocop', '~> 0.54.0', require: false
  gem 'rubocop-junit-formatter', require: false
  gem 'spring-commands-rubocop'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'sprockets-rails'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
