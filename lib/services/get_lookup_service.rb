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



end

x = GetLookup.new
x.get_info_of_specific_neo('3729835')
puts x.get_is_potentially_hazardous_asteroid_key_value
