# frozen_string_literal: true

ruby_version = ask('Ruby version', default: '2.7.1')
node_version = ask('Nodejs version', default: '12.18.3')

create_file '.tool-versions', force: true do
  "ruby #{ruby_version}\nnodejs #{node_version}"
end

if yes?('Do initial commit?')
  git :init
  git add: '.'
  git commit: '-m "initial"'
end

rake 'db:create db:migrate' if yes?('Create database?')

if yes?('Add Rspec?')
  gem_group :test do
    gem 'webmock'
    gem 'vcr'
  end
  gem_group :development, :test do
    gem 'rspec-rails'
    gem 'factory_bot_rails'
    # TODO: Add support file
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

if yes?('Add Devise')
  gem 'devise'
  generate 'devise:install'
  model_name = ask('What would you like the user model to be called? [user]')
  model_name = 'user' if model_name.blank?
  generate 'devise', model_name
end

git :init
git add: '.'
git commit: '-m "gems"'
