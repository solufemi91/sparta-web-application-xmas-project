require 'httparty'
require 'json'

class GetLookup
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_info_of_specific_neo(asteroid_id)
    @results =JSON.parse(self.class.get("/rest/v1/neo/#{asteroid_id}?api_key=#{@apiKey}").body)
  end

  def get_links_key_value
   @results['links']
  end

  def get_links_self_key_value
   get_links_key_value['self']
  end

  def get_neo_reference_id_key_value
   @results['neo_reference_id']
  end

  def get_name_key_value
   @results['name']
  end

  def get_nasa_jpl_url_key_value
   @results['nasa_jpl_url']
  end

  def get_absolute_magnitude_h_key_value
   @results['absolute_magnitude_h']
  end

  def get_estimated_diameter_key_value
   @results['estimated_diameter']
  end

  def get_estimated_diameter_kilometers_key_value
   get_estimated_diameter_key_value['kilometers']
  end

  def get_estimated_diameter_kilometers_min_key_value
    get_estimated_diameter_kilometers_key_value['estimated_diameter_min']
  end

  def get_estimated_diameter_kilometers_max_key_value
    get_estimated_diameter_kilometers_key_value['estimated_diameter_max']
  end

  def get_estimated_diameter_meters_key_value
   get_estimated_diameter_key_value['meters']
  end

  def get_estimated_diameter_meters_min_key_value
    get_estimated_diameter_meters_key_value['estimated_diameter_min']
  end

  def get_estimated_diameter_meters_max_key_value
    get_estimated_diameter_meters_key_value['estimated_diameter_max']
  end

  def get_estimated_diameter_miles_key_value
   get_estimated_diameter_key_value['miles']
  end

  def get_estimated_diameter_miles_min_key_value
    get_estimated_diameter_miles_key_value['estimated_diameter_min']
  end

  def get_estimated_diameter_miles_max_key_value
    get_estimated_diameter_miles_key_value['estimated_diameter_max']
  end

  def get_estimated_diameter_feet_key_value
   get_estimated_diameter_key_value['feet']
  end

  def get_estimated_diameter_feet_min_key_value
   get_estimated_diameter_feet_key_value['estimated_diameter_min']
  end

  def get_estimated_diameter_feet_max_key_value
   get_estimated_diameter_feet_key_value['estimated_diameter_max']
  end

  def get_is_potentially_hazardous_asteroid_key_value
   @results['is_potentially_hazardous_asteroid']
  end

  def get_close_approach_data_key_value
    @results['close_approach_data']
  end

  def get_all_close_approach_dates
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['close_approach_date'])
    end
    @my_array
  end


  #
  def get_all_epoch_date_close_approaches
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['epoch_date_close_approach'])
    end
    @my_array
  end
  #
  def get_all_relative_velocities
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['relative_velocity'])
    end
    @my_array
  end
  #
  def get_all_relative_velocity_kps
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['relative_velocity']['kilometers_per_second'])
    end
    @my_array
  end
  #
  def get_all_relative_velocity_kphs
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['relative_velocity']['kilometers_per_hour'])
    end
    @my_array
  end
  #
  def get_all_relative_velocity_mphs
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['relative_velocity']['miles_per_hour'])
    end
    @my_array
  end
  #
  def get_all_miss_distances
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['miss_distance'])
    end
    @my_array
  end
  #
  def get_all_miss_distance_astronomicals
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['miss_distance']['astronomical'])
    end
    @my_array
  end
  #
  def get_all_miss_distance_lunars
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['miss_distance']['lunar'])
    end
    @my_array
  end
  #
  def get_all_miss_distance_kilometers
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['miss_distance']['kilometers'])
    end
    @my_array
  end

  def get_all_miss_distance_miles
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['miss_distance']['miles'])
    end
    @my_array
  end
  #
  def get_all_orbiting_bodies
    @my_array = []
    get_close_approach_data_key_value.each do |element|
      @my_array.push(element['orbiting_body'])
    end
    @my_array
  end

  def get_orbital_data_key_value
    @results['orbital_data']
  end

  def get_orbit_id
    get_orbital_data_key_value['orbit_id']
  end

  def get_orbit_determination_date
    get_orbital_data_key_value['orbit_determination_date']
  end

  def get_orbit_uncertainty
    get_orbital_data_key_value['orbit_uncertainty']
  end

  def get_minimum_orbit_intersection
    get_orbital_data_key_value['minimum_orbit_intersection']
  end

  def get_jupiter_tisserand_invariant
    get_orbital_data_key_value['jupiter_tisserand_invariant']
  end

  def get_epoch_osculation
    get_orbital_data_key_value['epoch_osculation']
  end

  def get_eccentricity
    get_orbital_data_key_value['eccentricity']
  end

  def get_semi_major_axis
    get_orbital_data_key_value['semi_major_axis']
  end

  def get_inclination
    get_orbital_data_key_value['inclination']
  end

  def get_ascending_node_longitude
    get_orbital_data_key_value['ascending_node_longitude']
  end

  def get_orbital_period
    get_orbital_data_key_value['orbital_period']
  end

  def get_perihelion_distance
    get_orbital_data_key_value['perihelion_distance']
  end

  def get_perihelion_argument
    get_orbital_data_key_value['perihelion_argument']
  end

  def get_aphelion_distance
    get_orbital_data_key_value['aphelion_distance']
  end

  def get_perihelion_time
    get_orbital_data_key_value['perihelion_time']
  end

  def get_mean_anomaly
    get_orbital_data_key_value['mean_anomaly']
  end

  def get_mean_motion
    get_orbital_data_key_value['mean_motion']
  end

  def get_equinox
    get_orbital_data_key_value['equinox']
  end


end

# x = GetLookup.new
# x.get_info_of_specific_neo('3729835')
#
#
# puts x.get_equinox
