source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "3.0.3"

gem "rails", "6.1.4.1"

# APP SERVER
gem "puma", "~> 4.1"

# DATABASE
gem "mysql2", ">= 0.4.4"

# AUTHENTICATION
gem "devise"
gem "devise-jwt"

# SUPPORT
gem "bootsnap", ">= 1.4.2", require: false
gem "config"
gem "jbuilder", "~> 2.7"
gem "rack-cors"

# Linter

group :development, :test do
  gem "pry-byebug"
  gem "pry-rails"
  gem "rubocop", require: false
end

group :development do
  gem "listen", "~> 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]