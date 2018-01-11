require_relative '../../models/space_object'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require 'http'

Given("I am on the homepage") do
  my_homepage.visit_home_page
  sleep 2
end

When("I click a link") do
  resource_index.click_link_to_resource_index
  sleep 2
end

Then("All the posts for the resource should be displayed on one page.") do

  database_titles_array = []
  SpaceObject.all.each do |spaceobject|
    database_titles_array.push(spaceobject.title)
  end

  website_titles_array = []
  resource_index.find_space_object_titles.each do |spaceobject|
    website_titles_array.push(spaceobject.text)
  end

  expect(website_titles_array.sort).to eq database_titles_array.sort
  sleep 4
end
