source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bundler', '>=1.8.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'
gem 'bower-rails', '~>0.10.0'

# Hirb provides a mini view framework for console applications
# gem and uses it to improve ripl(irb)'s default inspect output.
gem 'hirb'

gem 'puma', '3.4.0'
gem 'sass-rails', '>= 5.0.6'
gem 'uglifier', '3.0.0'
gem 'coffee-rails', '4.2.1'
gem 'jquery-rails', '4.1.1'
# adicionado para calendario

#  jQuery DataTables plugin for easy use with the
gem 'jquery-ui-rails'
# Rails 3.1+ asset pipleine. It provides all the basic DataTables files, and a few of the extras.
#gem 'jquery-datatables-rails', '~> 3.4.0'
# Rails gem of the Bootstrap based admin theme SB Admin 2
gem 'bootstrap_sb_admin_base_v2'
gem 'turbolinks', '5.0.1'
gem 'jquery-turbolinks'
gem 'jbuilder', '2.4.1'
gem "therubyracer"
#gem "less-rails"
gem "twitter-bootstrap-rails"
# gem 'sprockets-rails'
gem 'bootstrap-sass', '3.3.6'
gem 'glyphicons-rails'
# Simple Form aims to be as flexible as possible while helping you with
# powerful components to create your form
gem 'simple_form'
# Dynamic nested forms using jQuery made easy
gem 'cocoon'

# Slim is a template language whose goal is reduce the syntax to the essential parts without becoming cryptic
gem 'slim'
# The most popular front-end framework for developing responsive, mobile first projects on the web.
gem 'rails-assets-bootstrap', source: 'https://rails-assets.org'
#A simple, versatile notification library
gem 'rails-assets-notifyjs', source: 'https://rails-assets.org'
# datatables
gem 'rails-assets-DataTables', source: 'https://rails-assets.org'
# datatables-i18n
gem 'rails-assets-datatables-i18n', source: 'https://rails-assets.org'
# Devise is a flexible authentication solution for Rails based on Warden
gem 'devise'
# Internationalization (aka i18n) do Devise
#gem 'devise-i18n'
#Paperclip is intended as an easy file attachment library for ActiveRecord.
gem "paperclip", "~> 5.0.0"

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3', '1.3.12'
  #Rails >= 3 pry initializer
  gem 'pry-rails'
  # Better Errors replaces the standard Rails error page with a much better and more useful error page.
  gem 'better_errors'
  # Generate Entity-Relationship Diagrams for Rails Applications
  gem 'rails-erd'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
