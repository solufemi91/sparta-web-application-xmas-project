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

    it "I expect the self key to start with https" do
      @browse.get_links_self_key_value do |element|
        expect(element).to start_with("https")
      end
    end

    it "I expect the neo reference id to be a string" do
      @browse.get_neo_reference_id_key_value do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "I expect the value of the name key to be a string" do
      @browse.get_name_key_value do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "I expect the value of the nasa_jpl_url key to be a web address" do
      @browse.get_nasa_jpl_url_key_value.each do |element|
         expect(element).to start_with("http")
       end
    end


    it "I expect the value of the absolute_magnitude_h key to be a float" do
      @browse.get_absolute_magnitude_h_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_kilometers_min key to be a float" do
      @browse.get_estimated_diameter_kilometers_min_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_kilometers_max key to be a float" do
      @browse.get_estimated_diameter_kilometers_max_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_meters_min key to be a float" do
      @browse.get_estimated_diameter_meters_min_key_value.each do |element|
         expect(element).to be_kind_of(Float)
       end
    end

    it "I expect the value of the estimated_diameter_meters_max key to be a float" do
      @browse.get_estimated_diameter_meters_max_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_miles_min key to be a float" do
      @browse.get_estimated_diameter_miles_min_key_value.each do |element|
         expect(element).to be_kind_of(Float)
       end
    end

    it "I expect the value of the estimated_diameter_miles_max key to be a float" do
      @browse.get_estimated_diameter_miles_max_key_value.each do |element|
         expect(element).to be_kind_of(Float)
       end
    end

    it "I expect the value of the estimated_diameter_feet_min key to be a float" do
      @browse.get_estimated_diameter_feet_min_key_value.each do |element|
        expect(element).to be_kind_of(Float)
      end
    end

    it "I expect the value of the estimated_diameter_feet_max key to be a float" do
      @browse.get_estimated_diameter_feet_max_key_value.each do |element|
       expect(element).to be_kind_of(Float)
     end
    end

    it "I expect the value of the is_potentially_hazardous_asteroid key to be a boolean" do
      @browse.get_is_potentially_hazardous_asteroid_key_value.each do |element|
        expect(element).to be(true).or be(false)
      end
    end

    ###
    #
    it "i expect the close_approach_date for each element in the close_approach_data to be a string" do
      @browse.get_all_close_approach_dates.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the epoch_date_close_approach value for each element in the close_approach_data to be an Integer" do
      @browse.get_all_epoch_date_close_approaches.each do |element|
        expect(element).to be_kind_of(Integer)
      end
    end
    #
    it "i expect the relative_velocity value for each element in the close_approach_data to be a Hash" do
      @browse.get_all_relative_velocities.each do |element|
        expect(element).to be_kind_of(Hash)
      end
    end
    #
    it "i expect the  kilometers_per_second value in the relative_velocity key for each element in the close_approach_data to be a String" do
      @browse.get_all_relative_velocity_kps.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    it "i expect the  miles_per_hour value in the relative_velocity key for each element in the close_approach_data to be a String" do
      @browse.get_all_relative_velocity_mphs.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the value of the miss_distance key for each element in the close_approach_data to be a Hash" do
      @browse.get_all_miss_distances.each do |element|
        expect(element).to be_kind_of(Hash)
      end
    end
    #
    it "i expect the value of the miss_distance_astronomicals key for each element in the close_approach_data to be a String" do
      @browse.get_all_miss_distance_astronomicals.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the value of the miss_distance_lunars key for each element in the close_approach_data to be a String" do
      @browse.get_all_miss_distance_lunars.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    #
    it "i expect the value of the miss_distance_kilometers key for each element in the close_approach_data to be a String" do
      @browse.get_all_miss_distance_kilometers.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

    #
    it "i expect the value of the miss_distance_miles key for each element in the close_approach_data to be a String" do
      @browse.get_all_miss_distance_miles.each do |element|
        expect(element).to be_kind_of(String)
      end
    end
    #
    it "i expect the value of orbiting_body key for each element in the close_approach_data to be a String" do
      @browse.get_all_orbiting_bodies.each do |element|
        expect(element).to be_kind_of(String)
      end
    end

  it "I expect the orbit_id to be a string" do
      @browse.get_orbit_ids.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the orbit_determination_date to be a string" do
      @browse.get_orbit_determination_dates.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the orbit_uncertainty to be a string" do
      @browse.get_orbit_uncertainties.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the minimum_orbit_intersection to be a string" do
      @browse.get_minimum_orbit_intersections.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the jupiter_tisserand_invariant to be a string" do
      @browse.get_jupiter_tisserand_invariants.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the epoch_osculation to be a string" do
      @browse.get_epoch_osculations.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the eccentricity to be a string" do
      @browse.get_eccentricities.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the semi_major_axis to be a string" do
      @browse.get_semi_major_axises.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the inclination to be a string" do
      @browse.get_inclinations.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the ascending_node_longitude to be a string" do
      @browse.get_ascending_node_longitudes.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the orbital_period to be a string" do
      @browse.get_orbital_periods.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the perihelion_distance to be a string" do
      @browse.get_perihelion_distances.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the perihelion_argument to be a string" do
      @browse.get_perihelion_arguments.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the aphelion_distance to be a string" do
      @browse.get_aphelion_distances.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the perihelion_time to be a string" do
      @browse.get_perihelion_times.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the mean_anomaly to be a string" do
      @browse.get_mean_anomalies.each do |element|
        expect(element).to be_kind_of(String)
    end
  end


  it "I expect the mean_motion to be a string" do
      @browse.get_mean_motions.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  it "I expect the equinox to be a string" do
      @browse.get_equinoxes.each do |element|
        expect(element).to be_kind_of(String)
    end
  end

  end
end
