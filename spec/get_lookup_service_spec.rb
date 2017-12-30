require 'spec_helper'

describe Nasa_api do
  context 'For the get_lookup service' do

    before(:all) do
      @lookup = Nasa_api.new.lookup_service
      @id = Nasa_api.new.random_asteroid
      @id.get_random_asteroid_by_id
      @results = @lookup.get_info_of_specific_neo('3729835')
    end

    it "I expect the results to be a hash" do
      expect(@results).to be_kind_of(Hash)
    end

    it "I expect the links key to have another hash within it" do
      expect(@lookup.get_links_key_value).to be_kind_of(Hash)
    end

    it "I expect the value of the self key to be a web address" do
      expect(@lookup.get_links_self_key_value).to start_with("https")

    end

    it "I expect the neo reference id to be a string" do
      expect(@lookup.get_neo_reference_id_key_value).to be_kind_of(String)
    end

    it "I expect the value of the name key to be a string" do
      expect(@lookup.get_name_key_value).to be_kind_of(String)
    end

    it "I expect the value of the nasa_jpl_url key to be a web address" do
      expect(@lookup.get_nasa_jpl_url_key_value).to start_with("http")
    end


    it "I expect the value of the absolute_magnitude_h key to be a float" do
      expect(@lookup.get_absolute_magnitude_h_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_kilometers_min key to be a float" do
      expect(@lookup.get_estimated_diameter_kilometers_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_kilometers_max key to be a float" do
      expect(@lookup.get_estimated_diameter_kilometers_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_meters_min key to be a float" do
      expect(@lookup.get_estimated_diameter_meters_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_meters_max key to be a float" do
      expect(@lookup.get_estimated_diameter_meters_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_miles_min key to be a float" do
      expect(@lookup.get_estimated_diameter_miles_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_miles_max key to be a float" do
      expect(@lookup.get_estimated_diameter_miles_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_feet_min key to be a float" do
      expect(@lookup.get_estimated_diameter_feet_min_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the estimated_diameter_feet_max key to be a float" do
      expect(@lookup.get_estimated_diameter_feet_max_key_value).to be_kind_of(Float)
    end

    it "I expect the value of the is_potentially_hazardous_asteroid key to be a boolean" do
      expect(@lookup.get_is_potentially_hazardous_asteroid_key_value).to be(true).or be(false)
    end

    it "i expect the close_approach_date for each element in the close_approach_data to be a string" do
      @lookup.get_all_close_approach_dates.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "i expect the epoch_date_close_approach value for each element in the close_approach_data to be an Integer" do
      @lookup.get_all_epoch_date_close_approaches.each do |element|
        expect(element).to be_kind_of(Integer)
      end
    end

    it "i expect the relative_velocity value for each element in the close_approach_data to be a Hash" do
      @lookup.get_all_relative_velocities.each do |element|
        expect(element).to be_kind_of(Hash)
      end
    end

    it "i expect the  kilometers_per_second value in the relative_velocity key for each element in the close_approach_data to be a String" do
      @lookup.get_all_relative_velocity_kps.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "i expect the  miles_per_hour value in the relative_velocity key for each element in the close_approach_data to be a String" do
      @lookup.get_all_relative_velocity_mphs.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "i expect the value of the miss_distance key for each element in the close_approach_data to be a Hash" do
      @lookup.get_all_miss_distances.each do |element|
        expect(element).to be_kind_of(Hash)
      end
    end

    it "i expect the value of the miss_distance_astronomicals key for each element in the close_approach_data to be a String" do
      @lookup.get_all_miss_distance_astronomicals.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "i expect the value of the miss_distance_lunars key for each element in the close_approach_data to be a String" do
      @lookup.get_all_miss_distance_lunars.each do |element|
        expect(element).to be_kind_of(String)
      end
    end


    it "i expect the value of the miss_distance_kilometers key for each element in the close_approach_data to be a String" do
      @lookup.get_all_miss_distance_kilometers.each do |element|
        expect(element).to be_kind_of(String)
      end
    end


    it "i expect the value of the miss_distance_miles key for each element in the close_approach_data to be a String" do
      @lookup.get_all_miss_distance_miles.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "i expect the value of orbiting_body key for each element in the close_approach_data to be a String" do
      @lookup.get_all_orbiting_bodies.each do |element|
        expect(element).to be_kind_of(String)
      end
    end


    it "I expect the orbital_data key to return a hash" do
      expect(@lookup.get_orbital_data_key_value).to be_kind_of(Hash)
    end


    it "I expect the orbit_id to be a string" do
      expect(@lookup.get_orbit_id).to be_kind_of(String)
    end

    it "I expect the orbit_determination_date to be a string" do
      expect(@lookup.get_orbit_determination_date).to be_kind_of(String)
    end

    it "I expect the orbit_uncertainty to be a string" do
      expect(@lookup.get_orbit_uncertainty).to be_kind_of(String)
    end

    it "I expect the minimum_orbit_intersection to be a string" do
      expect(@lookup.get_minimum_orbit_intersection).to be_kind_of(String)
    end

    it "I expect the jupiter_tisserand_invariant to be a string" do
      expect(@lookup.get_jupiter_tisserand_invariant).to be_kind_of(String)
    end

    it "I expect the epoch_osculation to be a string" do
      expect(@lookup.get_epoch_osculation).to be_kind_of(String)
    end

    it "I expect the eccentricity to be a string" do
      expect(@lookup.get_eccentricity).to be_kind_of(String)
    end

    it "I expect the semi_major_axis to be a string" do
      expect(@lookup.get_semi_major_axis).to be_kind_of(String)
    end

    it "I expect the inclination to be a string" do
      expect(@lookup.get_inclination).to be_kind_of(String)
    end

    it "I expect the ascending_node_longitude to be a string" do
      expect(@lookup.get_ascending_node_longitude).to be_kind_of(String)
    end

    it "I expect the orbital_period to be a string" do
      expect(@lookup.get_orbital_period).to be_kind_of(String)
    end

    it "I expect the perihelion_distance to be a string" do
      expect(@lookup.get_perihelion_distance).to be_kind_of(String)
    end

    it "I expect the perihelion_argument to be a string" do
      expect(@lookup.get_perihelion_argument).to be_kind_of(String)
    end

    it "I expect the aphelion_distance to be a string" do
      expect(@lookup.get_aphelion_distance).to be_kind_of(String)
    end

    it "I expect the perihelion_time to be a string" do
      expect(@lookup.get_perihelion_time).to be_kind_of(String)
    end

    it "I expect the mean_anomaly to be a string" do
      expect(@lookup.get_mean_anomaly).to be_kind_of(String)
    end


    it "I expect the mean_motion to be a string" do
      expect(@lookup.get_mean_motion).to be_kind_of(String)
    end

    it "I expect the equinox to be a string" do
      expect(@lookup.get_equinox).to be_kind_of(String)
    end










  end
end
