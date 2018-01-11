require 'sinatra/base'
# require 'sinatra/reloader'

class SpaceObjectsController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }
  # 
  # configure :development do
  #   register Sinatra::Reloader
  # end

  get '/resource' do
    @spaceobjects = SpaceObject.all
    erb :'space_objects/index'
  end

  get '/:id' do

    id = params[:id].to_i

    @spaceobject = SpaceObject.find(id)

    erb :'space_objects/show'

  end

  get "/resource/new" do

    @title = "New space object form"

    @spaceobjects = SpaceObject.new

    erb :'space_objects/new'

  end


  get '/:id/edit'  do
     @title = "The edit space objects form"

     id = params[:id].to_i

    @spaceobjects = SpaceObject.find(id)

     erb :'space_objects/edit'


  end

  delete '/:id'  do

    id = params[:id].to_i

    SpaceObject.destroy(id)

    redirect "/resource"

  end

  post '/' do

    spaceobject = SpaceObject.new

    spaceobject.title = params[:title]

    spaceobject.body = params[:body]

    spaceobject.image = params[:image]

    spaceobject.save

    redirect '/resource'


  end

  put '/:id'  do

    id = params[:id].to_i

    spaceobject = SpaceObject.find(id)

    spaceobject.id = params[:id]

    spaceobject.title = params[:title]

    spaceobject.body = params[:body]

    spaceobject.image = params[:image]

    spaceobject.save

    redirect '/resource'

  end



end
