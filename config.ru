require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './controllers/solar_system_controller'
require_relative './lib/services/get_browse_service'
require_relative './lib/services/get_lookup_service'

use Rack::MethodOverride

run SolarSystemController
