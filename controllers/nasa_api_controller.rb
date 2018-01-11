class NasaApiController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  # configure :development do
  #   register Sinatra::Reloader
  # end

  id = '2153306'
  startDate = '2017-01-10'
  endDate = '2017-01-15'

  get '/' do
    erb :'nasa_api/index'
  end

  get "/results/lookup" do
    @title = "Lookup"
    @lookup = GetLookup.new
    @results = @lookup.get_info_of_specific_neo(id)
    erb :'nasa_api/lookup'
  end

  get '/results/feed' do
    @title = "Feed"
    @feed = GetSpecifiedRange.new
    @feed.get_specified_range(startDate,endDate)
    erb :'nasa_api/feed'

  end

  get '/results/browse' do
    @title = "Browse"
    @browse = GetListOfNeo.new
    @results = @browse.get_list_of_neo
    erb :'nasa_api/browse'
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

    redirect "/results/browse"
  end


end
