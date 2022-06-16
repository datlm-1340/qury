source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

# Rails
gem "rails", "~> 7.0.3"

# Database
gem "mysql2"

# Web server
gem "puma", "~> 5.0"

# Devise
gem "devise"
gem "devise-jwt"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# CORS
gem "rack-cors"

# Serializer
gem "jsonapi-serializer"
gem "oj"

# Config
gem "config"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
  gem "pry"
end
