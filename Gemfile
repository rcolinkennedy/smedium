source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Add Foundation for front end framework
gem 'compass-rails' # you need this or you get an error
gem 'zurb-foundation', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Authentication tools
gem 'omniauth-twitter'
# Use Figaro to stash keys for dev and deployment
gem 'figaro', '~> 0.7.0'

# Set up development group
group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '1.3.8'

  # Add RSpec for rails
  gem 'rspec-rails', '2.13.1'
  # Add Guard to automate testing
  gem 'guard-rspec', '2.5.0'
  # Add Spork to speed up testing
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.9'
end

group :test do
  # capybara has dependencies on selenium
  gem 'selenium-webdriver', '2.35.1'
  # Use capybara for simulating user interactions
  gem 'capybara', '2.1.0'
  # Use FactoryGirl for factories
  gem 'factory_girl_rails', '4.2.1'
end

# Set up Production group to test live on Heroku
group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end