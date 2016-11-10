if yes?('Do initial commit?')
  git :init
  git add: '.'
  git commit: '-m "initial"'
end

if rspec = yes?('Add Rspec?')
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
  run 'bundle'
  run 'bin/spring binstub --all'
  generate 'rspec:install'
end

if yes?('Add Pry?')
  gem_group :development, :test do
    gem 'pry-rails'
    gem 'pry-byebug'
  end
  run 'bundle'
end

if yes?('Add Guard?')
  gem_group :development do
    gem 'guard'
    gem 'guard-rspec' if rspec
    gem 'guard-bundler'
  end
  run 'bundle'
  run 'bundle exec guard init'
  run 'bundle exec guard init rspec' if rspec
  run 'bundle exec guard init bundler'
end

if yes?('Add Devise')
  gem 'devise'
  generate 'devise:install'
  model_name = ask('What would you like the user model to be called? [user]')
  model_name = 'user' if model_name.blank?
  generate 'devise', model_name
end

if yes?('Add Pundit')
  gem 'pundit'
  generate 'pundit:install'
end

if yes?('Add Carrierwave')
  gem 'carrierwave'
end

git :init
git add: '.'
git commit: '-m "gems"'
