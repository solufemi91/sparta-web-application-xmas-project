require 'spec_helper'

describe 'SpaceObjectsController' do
  include Rack::Test::Methods

  def app
    SpaceObjectsController.new
  end

  context 'Nasa App' do

    it "/resource displays index page for the resource" do
      get '/resource'
      expect(last_response.body).to include("Welcome to the SpaceObjects Page!")
    end

    it "/4 displays the show page for the resource" do
      get '/4'
      expect(last_response.body).to include("Mercury completes three rotations")
    end


    it "/resource/new displays form to create a new space object resource" do
      get '/resource/new'
      expect(last_response.body).to include("New space object form")
    end


    it "/1/edit displays form to edit a space object resource" do
      get '/1/edit'
      expect(last_response.body).to include("The edit space objects form")
    end






  end
end
