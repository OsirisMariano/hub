# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"
gem "bootstrap", "~> 5.3", ">= 5.3.2"
gem "devise", "~> 4.9", ">= 4.9.3"
gem "importmap-rails"
gem "jbuilder"
gem "jquery-rails"
gem "normalize-rails"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.8"
gem "sassc-rails", "~> 2.1.2"
gem "simple_form", "~> 5.3"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem "bigdecimal"
  gem "debug", platforms: [:mri, :mingw, :x64_mingw]
  gem "mutex_m"
  gem "faker"
  gem "tty-spinner"
end

group :development do
  gem "web-console"
  gem "rubocop-shopify", require: false
  gem "rubocop-rails", require: false
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem "cssbundling-rails", "~> 1.4"
