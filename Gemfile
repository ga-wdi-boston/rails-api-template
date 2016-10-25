# frozen_string_literal: true
#
source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '~> 4.2.7.1'
gem 'rails-api'
gem 'active_model_serializers', '~> 0.10.0'
gem 'rack-cors', require: 'rack/cors'
gem 'pg'
gem 'bcrypt', '~> 3.1.11'

group :production do
  gem 'rails_12factor', '~> 0.0.3'
end

group :development, :test do
  gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'
  gem 'pry', '~> 0.10'
  gem 'byebug', '~> 9.0'
  gem 'pry-byebug', '~> 3.3'
end

group :development do
  gem 'pry-rails', '~> 0.3.4'
  gem 'spring', '~> 1.6'
  gem 'spring-commands-rspec', '~> 1.0'
end

group :test do
  gem 'rspec-rails', '~> 3.5'
  gem 'rspec', '~> 3.5'
end
