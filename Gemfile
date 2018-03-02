source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.1.5"

gem "global"
gem "mysql2", ">= 0.3.18", "< 0.5"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"

group :test do
  gem "factory_bot_rails", group: "development"
  gem "rspec-rails", group: "development"
end

group :development do
  gem "annotate"
  gem "bullet", group: :test
  gem "fuubar"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "onkcop", require: false, group: :test
  gem "pry",        group: :test
  gem "pry-byebug", group: :test
  gem "pry-rails",  group: :test
  gem "pry-stack_explorer"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-commands-rubocop"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
