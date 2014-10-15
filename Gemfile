source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.4'  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'bootstrap-sass', '2.1'
gem 'bcrypt-ruby'
gem 'faker'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'
gem 'jquery-rails'  # Use jquery as the JavaScript library

gem 'turbolinks'  # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 1.2'  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

#gem 'devise'
gem 'protected_attributes'

group :development, :test do
  #gem 'pg'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'capybara'
end

group :assets do
  gem 'sass-rails', '~> 4.0.2'  # Use SCSS for stylesheets
  gem 'uglifier', '>= 1.3.0'  # Use Uglifier as compressor for JavaScript assets
  gem 'coffee-rails', '~> 4.0.0'  # Use CoffeeScript for .js.coffee assets and views
end

group :production do    #from https://devcenter.heroku.com/articles/getting-started-with-rails4
  gem 'pg'
  gem 'rails_12factor' #added based on stackoverflow suggestion
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# gem 'sqlite3'  # Use sqlite3 as the database for Active Record

# gem 'therubyracer', platforms: :ruby  # See https://github.com/sstephenson/execjs#readme for more supported runtimes

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]