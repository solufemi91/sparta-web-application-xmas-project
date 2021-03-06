require 'sinatra'
# require 'sinatra/reloader' if development?
require 'pg'
require 'http'
require_relative './controllers/nasa_api_controller'
require_relative './controllers/space_objects_controller'
require_relative './lib/services/get_browse_service'
require_relative './lib/services/get_lookup_service'
require_relative './lib/services/get_feed_service'
require_relative './models/space_object'

use Rack::MethodOverride
run Rack::Cascade.new([
  NasaApiController,
  SpaceObjectsController
])
