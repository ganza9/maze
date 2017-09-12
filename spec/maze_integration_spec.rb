require ('capybara/rspec')
require ('./app')
require('sinatra')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
