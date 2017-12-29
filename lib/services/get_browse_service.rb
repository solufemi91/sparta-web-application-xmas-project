require 'httparty'
require 'json'

class GetListOfNeo
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_list_of_neo
    @results =JSON.parse(self.class.get("/rest/v1/neo/browse?api_key=#{@apiKey}").body)
  end

  def get_main_links
   @results['links']
  end

  def get_next
    get_main_links['next']
  end

  def get_self
    get_main_links['self']
  end

  def get_page
   @results['page']
  end

  def get_page_size
    get_page['size']
  end

  def get_page_total_elements
    get_page['total_elements']
  end

  def get_page_total_pages
    get_page['total_pages']
  end

  def get_page_number
    get_page['number']
  end

  def get_near_earth_objects
   @results['near_earth_objects']
  end

  def get_links
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['links'])
   end
   @my_array
  end

  def get_links_self_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['links']['self'])
   end
   @my_array
  end

  def get_neo_reference_id_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['neo_reference_id'])
   end
   @my_array
  end

  def get_name_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['name'])
   end
   @my_array
  end

  def get_nasa_jpl_url_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['nasa_jpl_url'])
   end
   @my_array
  end

  def get_absolute_magnitude_h_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['absolute_magnitude_h'])
   end
   @my_array
  end


  def get_estimated_diameter_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter'])
   end
   @my_array
  end

  def get_estimated_diameter_kilometers_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['kilometers'])
   end
   @my_array
  end

  def get_estimated_diameter_kilometers_min_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['kilometers']['estimated_diameter_min'])
   end
   @my_array
  end

  def get_estimated_diameter_kilometers_max_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['kilometers']['estimated_diameter_max'])
   end
   @my_array
  end

  def get_estimated_diameter_meters_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['meters'])
   end
   @my_array
  end

  def get_estimated_diameter_meters_min_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['meters']['estimated_diameter_min'])
   end
   @my_array
  end

  def get_estimated_diameter_meters_max_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['meters']['estimated_diameter_max'])
   end
   @my_array
  end

  def get_estimated_diameter_miles_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['miles'])
   end
   @my_array
  end

  def get_estimated_diameter_miles_min_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['miles']['estimated_diameter_min'])
   end
   @my_array
  end

  def get_estimated_diameter_miles_max_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['miles']['estimated_diameter_max'])
   end
   @my_array
  end

  def get_estimated_diameter_feet_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['feet'])
   end
   @my_array
  end

  def get_estimated_diameter_feet_min_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['feet']['estimated_diameter_min'])
   end
   @my_array
  end

  def get_estimated_diameter_feet_max_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['estimated_diameter']['feet']['estimated_diameter_max'])
   end
   @my_array
  end

  def get_is_potentially_hazardous_asteroid_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['is_potentially_hazardous_asteroid'])
   end
   @my_array
  end

  def get_close_approach_data_key_value
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['close_approach_data'])
   end
   @my_array
  end

  def get_all_close_approach_dates
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['close_approach_date'])
      end
    end
    @my_array
  end

  def get_all_epoch_date_close_approaches
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['epoch_date_close_approach'])
      end
    end
    @my_array
  end

  def get_all_relative_velocities
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['relative_velocity'])
      end
    end
    @my_array
  end

  def get_all_relative_velocity_kps
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['relative_velocity']['kilometers_per_second'])
      end
    end
    @my_array
  end

  def get_all_relative_velocity_kphs
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['relative_velocity']['kilometers_per_hour'])
      end
    end
    @my_array
  end

  def get_all_relative_velocity_mphs
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['relative_velocity']['miles_per_hour'])
      end
    end
    @my_array
  end

  def get_all_miss_distances
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['miss_distance'])
      end
    end
    @my_array
  end

  def get_all_miss_distance_astronomicals
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['miss_distance']['astronomical'])
      end
    end
    @my_array
  end

  def get_all_miss_distance_lunars
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['miss_distance']['lunar'])
      end
    end
    @my_array
  end

  def get_all_miss_distance_kilometers
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['miss_distance']['kilometers'])
      end
    end
    @my_array
  end

  def get_all_miss_distance_miles
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['miss_distance']['miles'])
      end
    end
    @my_array
  end

  def get_all_orbiting_bodies
    @my_array = []
    get_near_earth_objects.each do |element|
      element['close_approach_data'].each do |subelement|
        @my_array.push(subelement['orbiting_body'])
      end
    end
    @my_array
  end

  def get_orbital_data_key_values
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data'])
   end
   @my_array
  end

  def get_orbit_ids
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['orbit_id'])
   end
   @my_array
  end

  def get_orbit_determination_dates
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['orbit_determination_date'])
   end
   @my_array
  end

  def get_orbit_uncertainties
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['orbit_uncertainty'])
   end
   @my_array
  end

  def get_minimum_orbit_intersections
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['minimum_orbit_intersection'])
   end
   @my_array
  end

  def get_jupiter_tisserand_invariants
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['jupiter_tisserand_invariant'])
   end
   @my_array
  end

  def get_epoch_osculations
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['epoch_osculation'])
   end
   @my_array
  end

  def get_eccentricities
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['eccentricity'])
   end
   @my_array
  end

  def get_semi_major_axises
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['semi_major_axis'])
   end
   @my_array
  end

  def get_inclinations
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['inclination'])
   end
   @my_array
  end

  def get_ascending_node_longitudes
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['ascending_node_longitude'])
   end
   @my_array
  end

  def get_orbital_periods
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['orbital_period'])
   end
   @my_array
  end

  def get_perihelion_distances
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['perihelion_distance'])
   end
   @my_array
  end

  def get_perihelion_arguments
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['perihelion_argument'])
   end
   @my_array
  end

  def get_aphelion_distances
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['aphelion_distance'])
   end
   @my_array
  end

  def get_perihelion_times
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['perihelion_time'])
   end
   @my_array
  end

  def get_mean_anomalies
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['mean_anomaly'])
   end
   @my_array
  end

  def get_mean_motions
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['mean_motion'])
   end
   @my_array
  end

  def get_equinoxes
    @my_array = []
   get_near_earth_objects.each do |element|
     @my_array.push(element['orbital_data']['equinox'])
   end
   @my_array
  end




end

# x = GetListOfNeo.new
#  x.get_list_of_neo
#  puts x.get_page_size
# # # puts x.get_neo_reference_id_key_value
# # # puts x.get_close_approach_data_key_value
# # puts x.get_equinoxes
