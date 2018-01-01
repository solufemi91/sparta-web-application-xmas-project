class SolarSystemController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  id = 0

  get '/' do
    erb :'solar_system_objects/index'
  end

  get '/results/lookup' do
    @title = "Results"
    @lookup = GetLookup.new
    @results = @lookup.get_info_of_specific_neo(id)
    erb :'solar_system_objects/results'
  end

  get '/results/feed' do
    @title = "Results"
    @lookup = GetLookup.new
    @results = @lookup.get_info_of_specific_neo(id)
    erb :'solar_system_objects/results'
  end



  post '/' do
    id = params[:title]
    redirect "/results/lookup"
  end


end
