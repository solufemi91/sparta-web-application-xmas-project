class SpaceObjectsController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  get '/resource' do
    @objects = SpaceObject.all
    erb :'space_objects/index'
  end

end
