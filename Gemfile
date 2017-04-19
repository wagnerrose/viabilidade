source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.1'
gem 'puma', '3.4.0'
gem 'sass-rails', '>= 5.0.6'
gem 'uglifier', '3.0.0'
gem 'coffee-rails', '4.2.1'
gem 'jquery-rails', '4.1.1'
gem 'turbolinks', '5.0.1'
gem 'jbuilder', '2.4.1'
gem "therubyracer"
# gem "less-rails"
gem "twitter-bootstrap-rails"
gem 'sprockets-rails'
gem 'glyphicons-rails'
gem 'simple_form'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'sqlite3', '1.3.12'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
