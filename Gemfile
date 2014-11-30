source 'https://rubygems.org'

# Default
gem 'rails', '4.1.6'

gem 'mysql2'

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

# Authentication
gem 'devise'                   # rails user authentication
gem 'omniauth'                 # you can login with outside account
gem 'omniauth-twitter'         # Twitter login with Omniauth
gem 'omniauth-facebook'        # Facebook login with Omniauth
gem 'omniauth-google-oauth2'   # Google login with Omniauth

gem 'slim-rails'

gem 'bootstrap-sass', '~> 3.1.1'

gem 'twitter-bootswatch-rails', '~> 3.1.1'
gem 'twitter-bootswatch-rails-helpers'
gem 'twitter-bootswatch-rails-fontawesome'

gem 'therubyracer', '= 0.12.1', platforms: :ruby
gem 'libv8', '= 3.16.14.3'

gem 'activeadmin', github: 'gregbell/active_admin'


group :development do
  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'pry-rails'
  gem 'pry-doc'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'

  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-spring'

  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'bullet'
  gem 'quiet_assets'
  gem 'rails_best_practices'
  gem 'did_you_mean'

  gem 'annotate'
end

group :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_rewinder'
  gem 'rspec-request_describer'
  gem 'autodoc'
  gem 'json_spec'
end
group :production do
  gem 'pg', '= 0.17.1'
  gem 'rails_12factor'
end
