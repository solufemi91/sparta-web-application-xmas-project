require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './controllers/solar_system_controller'

use Rack::MethodOverride

run SolarSystemController 
