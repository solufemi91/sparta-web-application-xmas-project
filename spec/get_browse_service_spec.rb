require 'spec_helper'

describe Nasa_api do
  context 'For the get_browse service' do

    before(:all) do
      @browse = Nasa_api.new.browse_service
      @results = @browse.get_list_of_neo
    end

    it "I expect the results to be a hash" do
      expect(@results).to be_kind_of(Hash)
    end

    it "I expect the parent links key to return a hash" do
      expect(@browse.get_main_links).to be_kind_of(Hash)
    end

    it "I expect the next key to return a string that begins with https" do
      expect(@browse.get_next).to start_with("https")
    end

    it "I expect the self key to return a string that begins with https" do
      expect(@browse.get_self).to start_with("https")
    end

    it "I expect the page key to return a hash" do
      expect(@browse.get_page).to be_kind_of(Hash)
    end

    it "I expect the page_size key to return an Integer" do
      expect(@browse.get_page_size).to be_kind_of(Integer)
    end

    it "I expect the page_total_elements key to return an Integer" do
      expect(@browse.get_page_total_elements).to be_kind_of(Integer)
    end

    it "I expect the page_total_pages key to return an Integer" do
      expect(@browse.get_page_total_pages).to be_kind_of(Integer)
    end

    it "I expect the page_number key to return an Integer" do
      expect(@browse.get_page_number).to be_kind_of(Integer)
    end

    it "I expect the parent links key to return a array" do
      expect(@browse.get_near_earth_objects).to be_kind_of(Array)
    end













  end
end
