source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "rails"
gem "sprockets-rails"
gem "puma"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "byebug"
end

group :development do
  gem "web-console"
  gem "sqlite3", "~> 1.4"
  ruby "3.1.1"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :production do
  gem 'pg'
end

# plugin
gem 'devise'
gem 'uuid_v6'
gem 'bootstrap-sass'
gem 'sassc-rails'
gem 'sass-rails'
gem 'jquery-rails'
gem "slim-rails"
gem 'jquery-rails'