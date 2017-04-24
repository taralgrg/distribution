ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)
set(:root, Dir.pwd())
Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

  RSpec.configure do |config|
    config.include(Shoulda::Matchers::ActiveModel, type: :model)
    config.include(Shoulda::Matchers::ActiveRecord, type: :model)
      config.after(:each) do

        Brand.all().each() do |brand|
          brand.destroy()
        end

        Store.all().each() do |store|
          store.destroy()
        end

        Annoying.all().each() do |annoying|
          annoying.destroy()
        end
      end
    end
