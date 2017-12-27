require 'spec_helper'

describe GetLookup do
  context 'For the get_lookup service' do

    before(:all) do
      @x = GetLookup.new
      @results = @x.get_info_of_specific_neo('3729835')

    end

    it "I expect the results to be a hash" do
      expect(@results).to be_kind_of(Hash)
    end

    it "I expect the links key to have another hash within it" do
      expect(@x.get_links_key_value).to be_kind_of(Hash)
    end

    it "I expect the value of the self key to be a web address" do
      expect(@x.get_links_self_key_value).to start_with("https")

    end

    it "I expect the neo reference id to be a string" do
      expect(@x.get_neo_reference_id_key_value).to be_kind_of(String)
    end

    it "I expect the value of the name key to be a string" do
      expect(@x.get_name_key_value).to be_kind_of(String)
    end

    it "I expect the value of the nasa_jpl_url key to be a web address" do
      expect(@x.get_nasa_jpl_url_key_value).to start_with("http")

    end


    it "I expect the value of the absolute_magnitude_h key to be a float" do
      expect(@x.get_absolute_magnitude_h_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_kilometers_min key to be a float" do
      expect(@x.get_estimated_diameter_kilometers_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_kilometers_max key to be a float" do
      expect(@x.get_estimated_diameter_kilometers_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_meters_min key to be a float" do
      expect(@x.get_estimated_diameter_meters_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_meters_max key to be a float" do
      expect(@x.get_estimated_diameter_meters_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_miles_min key to be a float" do
      expect(@x.get_estimated_diameter_miles_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_miles_max key to be a float" do
      expect(@x.get_estimated_diameter_miles_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_feet_min key to be a float" do
      expect(@x.get_estimated_diameter_feet_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_feet_max key to be a float" do
      expect(@x.get_estimated_diameter_feet_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the is_potentially_hazardous_asteroid key to be a boolean" do
      expect(@x.get_is_potentially_hazardous_asteroid_key_value).to be(true).or be(false)
    end

  end
end
