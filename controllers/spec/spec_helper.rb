require 'rspec'
require 'rack/test'
require_relative '../space_objects_controller'
require_relative '../nasa_api_controller'
require_relative '../nasa_api_controller'
require 'sinatra/base'
require 'pg'
require_relative '../../models/space_object'
require_relative '../../lib/services/get_lookup_service'
require_relative '../../lib/services/get_browse_service'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
