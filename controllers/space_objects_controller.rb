class SpaceObjectsController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  get '/resource' do
    @spaceobjects = SpaceObject.all
    erb :'space_objects/index'
  end

  get "/resource/new" do

  @title = "New space object form"

  @spaceobjects = SpaceObject.new

  erb :'space_objects/new'

  end

  post '/' do

    spaceobject = SpaceObject.new

    spaceobject.title = params[:title]

    spaceobject.body = params[:body]

    spaceobject.image = params[:image]

    spaceobject.save

    redirect '/resource'


  end



end
