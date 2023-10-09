# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| 'https://github.com/#{repo}.git' }

ruby '3.1.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 7.0.3'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'jsbundling-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

gem 'dotenv-rails'

# Use Redis adapter to run Action Cable in production
gem 'sidekiq', '~> 6.5', '>= 6.5.1'
gem 'redis', '~> 4.7'

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem 'sassc-rails'

gem 'rspec-rails', '~> 6.0.0.rc1'
gem 'factory_bot_rails'

gem 'cssbundling-rails', '~> 1.1'

# Ruby wrapper for Terser JavaScript compressor [https://github.com/ahorek/terser-ruby]
gem 'terser', '~> 1.1'

group :development, :test do
  gem 'rubocop', require: false # A Ruby static code analyzer and formatter, based on the community Ruby style guide.
  gem 'rubocop-performance', require: false # An extension of RuboCop focused on code performance checks.
  gem 'rubocop-rails', require: false # A RuboCop extension focused on enforcing Rails best practices and coding conventions.
  gem 'rubocop-rspec', require: false # Code style checking for RSpec files

  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry'
  # Rails >= 3 pry initializer
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  gem 'annotate'
  gem 'bullet'
  gem 'letter_opener'

  # Static Analysis Security Tool which checks for security vulnerabilities in application
  gem 'brakeman', require: false
  gem 'rails_best_practices', require: false
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  gem 'rack-mini-profiler'

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
end
