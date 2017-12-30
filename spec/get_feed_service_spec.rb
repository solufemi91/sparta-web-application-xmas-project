require 'spec_helper'

describe Nasa_api do
  context 'For the get_feed service' do

    before(:all) do
      @feed = Nasa_api.new.feed_service
      @results = @feed.get_specified_range('2015-09-08','2015-09-07')
    end

    it "I expect the results to be a hash" do
      expect(@results).to be_kind_of(Hash)
    end

    it "I expect the parent links key to return a hash" do
      expect(@feed.get_main_links).to be_kind_of(Hash)
    end

    it "I expect the next key to return a string that begins with https" do
      expect(@feed.get_next).to start_with("https")
    end

    it "I expect the self key to return a string that begins with https" do
      expect(@feed.get_self).to start_with("https")
    end

    it "I expect the element key to return an Integer" do
      expect(@feed.get_element_count).to be_kind_of(Integer)
    end

    it "I expect the near_earth_objects key to return an Hash" do
      expect(@feed.get_near_earth_objects).to be_kind_of(Hash)
    end

    it "I expect the value of all self keys to start with https" do
      @feed.get_all_links_self_key_value do |element|
        expect(element).to start_with("https")
      end
    end


    ####START HERE

    it "I expect the neo reference id to be a string" do
      @feed.get_all_neo_reference_id_key_value do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "I expect the value of the name key to be a string" do
      @feed.get_all_name_key_value do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "I expect the value of the nasa_jpl_url key to be a web address" do
      @feed.get_nasa_jpl_url_key_value.each do |element|
         expect(element).to start_with("http")
       end
    end


    it "I expect the value of the absolute_magnitude_h key to be a float" do
      @feed.get_absolute_magnitude_h_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_kilometers_min key to be a float" do
      @feed.get_estimated_diameter_kilometers_min_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_kilometers_max key to be a float" do
      @feed.get_estimated_diameter_kilometers_max_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_meters_min key to be a float" do
      @feed.get_estimated_diameter_meters_min_key_value.each do |element|
         expect(element).to be_kind_of(Float)
       end
    end

    it "I expect the value of the estimated_diameter_meters_max key to be a float" do
      @feed.get_estimated_diameter_meters_max_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_miles_min key to be a float" do
      @feed.get_estimated_diameter_miles_key_value.each do |element|
         expect(element).to be_kind_of(Float)
       end
    end

    it "I expect the value of the estimated_diameter_miles_max key to be a float" do
      @feed.get_estimated_diameter_miles_max_key_value.each do |element|
         expect(element).to be_kind_of(Float)
       end
    end

    it "I expect the value of the estimated_diameter_feet_min key to be a float" do
      @feed.get_estimated_diameter_feet_min_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_feet_max key to be a float" do
      @feed.get_estimated_diameter_feet_max_key_value.each do |element|
       expect(element).to be_kind_of(Float)
     end
    end

    it "I expect the value of the is_potentially_hazardous_asteroid key to be a boolean" do
      @feed.get_is_potentially_hazardous_asteroid_key_value.each do |element|
        expect(element).to be(true).or be(false)
      end
    end

    ###
    #
    it "i expect the close_approach_date for each element in the close_approach_data to be a string" do
      @feed.get_all_close_approach_dates.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the epoch_date_close_approach value for each element in the close_approach_data to be an Integer" do
      @feed.get_all_epoch_date_close_approaches.each do |element|
        expect(element).to be_kind_of(Integer)
      end
    end
    #
    it "i expect the relative_velocity value for each element in the close_approach_data to be a Hash" do
      @feed.get_all_relative_velocities.each do |element|
        expect(element).to be_kind_of(Hash)
      end
    end
    #
    it "i expect the  kilometers_per_second value in the relative_velocity key for each element in the close_approach_data to be a String" do
      @feed.get_all_relative_velocity_kps.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "i expect the  miles_per_hour value in the relative_velocity key for each element in the close_approach_data to be a String" do
      @feed.get_all_relative_velocity_mphs.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the value of the miss_distance key for each element in the close_approach_data to be a Hash" do
      @feed.get_all_miss_distances.each do |element|
        expect(element).to be_kind_of(Hash)
      end
    end
    #
    it "i expect the value of the miss_distance_astronomicals key for each element in the close_approach_data to be a String" do
      @feed.get_all_miss_distance_astronomicals.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the value of the miss_distance_lunars key for each element in the close_approach_data to be a String" do
      @feed.get_all_miss_distance_lunars.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    #
    it "i expect the value of the miss_distance_kilometers key for each element in the close_approach_data to be a String" do
      @feed.get_all_miss_distance_kilometers.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    #
    it "i expect the value of the miss_distance_miles key for each element in the close_approach_data to be a String" do
      @feed.get_all_miss_distance_miles.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the value of orbiting_body key for each element in the close_approach_data to be a String" do
      @feed.get_all_orbiting_bodies.each do |element|
        expect(element).to be_kind_of(String)
      end
    end


  end
end
