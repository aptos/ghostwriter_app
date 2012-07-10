require 'rbconfig'
source 'http://rubygems.org'

gem 'rails', '3.1.1.rc1'
gem 'thin'

gem 'jquery-rails'
gem "bson_ext", ">= 1.6.4"
gem "mongoid", ">= 2.4.11"
gem "omniauth"
gem 'omniauth-twitter'
gem "bootstrap-sass", ">= 2.0.3"
gem "simple_form"
gem "will_paginate_mongoid"

gem "rails-backbone"

## Gems used only for assets and not required
## in production environments by default.
group :assets do
    gem 'sass-rails', "  ~> 3.1.0"
    gem 'coffee-rails', "~> 3.1.0"
    gem 'uglifier', '>= 1.0.3'
end

group :test, :development do
    # gem 'ruby-debug19', :require => 'ruby-debug'
    gem "rspec-rails", ">= 2.10.1", :group => [:development, :test]
    gem "database_cleaner", ">= 0.8.0", :group => :test
    gem "mongoid-rspec", ">= 1.4.4", :group => :test
    gem "machinist", :group => :test
end