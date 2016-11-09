if yes? 'Do initial commit?'
  git :init
  git add: '.'
  git commit: 'initial'
end

if yes? 'Add Rspec?'
  gem_group :test do
    gem 'webmock'
    gem 'vcr'
  end
  gem_group :development, :test do
    gem 'rspec-rails'
    gem 'factory_girl_rails'
  end
  gem_group :development do
    gem 'spring'
    gem 'spring-commands-rspec'
  end
  run :bundle
  run spring: 'binstub --all'
  generate 'rspec:install'
end

if yes? 'Add Pry?'
  gem_group :development, :test do
    gem 'pry-rails'
    gem 'pry-byebug'
  end
  run :bundle
end

if yes? 'Add Guard?'
  gem_group :development do
    gem 'guard'
    gem 'guard-rspec'
    gem 'guard-bundler'
  end
  run :bundle
  run bundle: 'exec guard init'
  run bundle: 'exec guard init rspec'
  run bundle: 'exec guard init bundler'
end

git :init
git add: '.'
git commit: 'gems'
