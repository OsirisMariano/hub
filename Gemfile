source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"
gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "devise", "~> 4.9", ">= 4.9.3"
gem "haml", "~> 6.3"
gem "simple_form", "~> 5.3"
gem "normalize-rails"
gem "bootstrap", "~> 5.3", ">= 5.3.2"
gem "jquery-rails"
gem "sassc-rails", "~> 2.1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'mutex_m'
  gem 'bigdecimal'
end

group :development do
  gem "web-console"
end

group :test do  
  gem "capybara"
  gem "selenium-webdriver"
end
