source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'fern-api', path: '../fern-api'
gem 'fern-documentation', path: '../fern-documentation'
gem 'fern-form', path: '../fern-form'
gem 'fern-parameters', path: '../fern-parameters'
gem 'fern-presenter', path: '../fern-presenter'
gem 'rails', '~> 5.1.1'
gem 'sqlite3', '~> 1.3'

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end
