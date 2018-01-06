require 'spec_helper'

describe 'NasaApiController' do
  include Rack::Test::Methods

  def app
    NasaApiController.new
  end

  context 'Nasa App' do

    it "displays index page for the api" do
      get '/'
      expect(last_response.body).to include("Search for an Asteroid by id")
    end

    it "displays browse page for the api" do
      get '/results/browse'
      expect(last_response.body).to include("browse")
    end





  end
end
