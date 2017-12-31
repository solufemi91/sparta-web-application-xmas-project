class SolarSystemController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do

  # Page title
  @title = "Blog posts"
  
  erb :'solar_system_objects/index'

  end


end
