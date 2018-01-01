class SolarSystemController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  id = 0
  startDate = 0
  endDate = 0

  get '/' do
    erb :'solar_system_objects/index'
  end

  get '/results/lookup' do
    @title = "Results"
    @lookup = GetLookup.new
    @results = @lookup.get_info_of_specific_neo(id)
    erb :'solar_system_objects/lookup'
  end

  get '/results/feed' do
    @title = "feed"
    @feed = GetSpecifiedRange.new
    @feed.get_specified_range(startDate,endDate)
    erb :'solar_system_objects/feed'

  end

  get '/results/browse' do
    @title = "Browse"
    @browse = GetListOfNeo.new
    @results = @browse.get_list_of_neo
    erb :'solar_system_objects/browse'

  end


  post '/lookup' do
    id = params[:title]
    redirect "/results/lookup"
  end

  post '/feed' do
    startDate = params[:start]
    endDate = params[:end]
    redirect "/results/feed"
  end

  post '/browse' do
    startDate = params[:start]
    endDate = params[:end]
    redirect "/results/browse"
  end


end
