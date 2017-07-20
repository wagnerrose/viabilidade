source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'

# Hirb provides a mini view framework for console applications 
# gem and uses it to improve ripl(irb)'s default inspect output.
gem 'hirb'

gem 'puma', '3.4.0'
gem 'sass-rails', '>= 5.0.6'
gem 'uglifier', '3.0.0'
gem 'coffee-rails', '4.2.1'
gem 'jquery-rails', '4.1.1'
# adicionado para calendario
gem 'jquery-ui-rails'
#  jQuery DataTables plugin for easy use with the 
# Rails 3.1+ asset pipleine. It provides all the basic DataTables files, and a few of the extras.
gem 'jquery-datatables-rails', '~> 3.4.0'

gem 'turbolinks', '5.0.1'
gem 'jquery-turbolinks'
gem 'jbuilder', '2.4.1'
gem "therubyracer"
# gem "less-rails"
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

#Paperclip is intended as an easy file attachment library for ActiveRecord. 
gem "paperclip", "~> 5.0.0"

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3', '1.3.12'
  #Rails >= 3 pry initializer
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
