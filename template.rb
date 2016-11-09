git :init
git add: '.'
git commit: 'initial'

gem_group :test do
  gem 'webmock'
  gem 'vcr'
end

gem_group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

gem_group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
end

run :bundle
run spring: 'binstub --all'
run bundle: 'exec guard init'
run bundle: 'exec guard init rspec'
run bundle: 'exec guard init bundler'

generate 'rspec:install'

git :init
git add: '.'
git commit: 'gems'
