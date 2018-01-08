require 'spec_helper'

describe 'NasaApiController' do
  include Rack::Test::Methods

  def app
    NasaApiController.new
  end

  context 'Nasa App' do

    it "displays index page for the api" do
      get '/'
      expect(last_response.body).to include("Search for an asteroid by id")
    end

    it "displays browse results page for the api" do
      get '/results/browse'
      expect(last_response.body).to include("browse")
    end

    it "displays lookup results page for the api" do
      get '/results/lookup'
      expect(last_response.body).to include("Name of asteroid searched")
    end

    it "displays feed results page for the api" do
      get '/results/feed'
      expect(last_response.body).to include("Asteroids with a close approach date of")
    end

  end
end
