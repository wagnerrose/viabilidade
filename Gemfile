source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bundler', '>=1.8.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

# Sinatra, Merb, DataMapper and Sequel.
gem 'will_paginate'

gem 'bower-rails', '~>0.11.0'

gem 'puma', '~> 3.11'

# Ruby on Rails stylesheet engine for Sass
gem 'sass-rails', '>= 5.0.6'

# Ruby wrapper for UglifyJS JavaScript compressor
gem 'uglifier', '3.0.0'

# gem CoffeeScript adapter for the Rails asset pipeline. Also adds support for .coffee views.
gem 'coffee-rails', '~> 4.2'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2.0'

# A gem to automate using jQuery with Rails
gem 'jquery-rails'

# jQuery UI for the Rails asset pipeline
gem 'jquery-ui-rails'

gem 'jbuilder', '~> 2.5'

gem "therubyracer"

# GLYPHICONS Halflings, extracted from Twitter Bootstrap and customized for use with Sass
gem 'glyphicons-rails'

# Dynamic nested forms using jQuery made easy
gem 'cocoon'

# datatables-i18n
gem 'rails-i18n'

# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise', git: 'https://github.com/plataformatec/devise'

#Paperclip is intended as an easy file attachment library for ActiveRecord.
gem "paperclip", "~> 5.0.0"

# RailsAdmin is a Rails engine that provides an easy-to-use interface for managing your data
gem 'rails_admin', '~> 1.3'

# The Administration framework for Ruby on Rails
# gem 'activeadmin'

# Provides object geocoding (by street or IP address), reverse geocoding
# (coordinates to street address), distance queries for ActiveRecord and Mongoid
# gem 'geocoder'

gem 'passenger'
# Use Webpack to manage app-like JavaScript modules in Rails
gem 'webpacker', git: 'https://github.com/rails/webpacker.git'

# Gem para calculo de distancias
gem 'loc'

#gem 'yaml_db'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'mysql2'

  #Rails >= 3 pry initializer
  gem 'pry-rails'

  # Better Errors replaces the standard Rails error page with a much better and more useful error page.
  gem 'better_errors'

  # Generate Entity-Relationship Diagrams for Rails Applications
  gem 'rails-erd'

  # Retrieve the binding of a methods caller im MRI 1.9.2+
  gem 'binding_of_caller'
  # A library for generating fake data souch as names, addresses and phones numbers
  gem 'faker'
end

group :development do

  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
