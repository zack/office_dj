source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt', '~> 3.1'
gem 'figaro', '~> 1.1'
gem 'haml-rails', '~> 1.0'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 3.10'
gem 'rails', '~> 5.1'
gem 'rubocop', '~> 0.51'
gem 'sass-rails', '~> 5.0'
gem 'sqlite3', '~> 1.3'
gem 'turbolinks', '~> 5.0'
gem 'uglifier', '~> 3.2'

# gem 'capistrano-rails', group: :development
# gem 'redis', '~> 3.0'
# gem 'therubyracer', platforms: :ruby

group :development, :test do
  gem 'byebug', '~> 9.1', platforms: %i[mri mingw x64_mingw]
  gem 'capybara', '~> 2.15'
  gem 'selenium-webdriver', '~> 3.6'
end

group :development do
  gem 'listen', '~> 3.1'
  gem 'spring', '~> 2.0'
  gem 'spring-watcher-listen', '~> 2.0'
  gem 'web-console', '~> 3.5'
end

group :test do
  group :test do
    gem 'guard', '~> 2.14'
    gem 'guard-minitest', '~> 2.4'
    gem 'minitest-reporters', '~> 1.1'
    gem 'rails-controller-testing', '~> 1.0'
  end
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
