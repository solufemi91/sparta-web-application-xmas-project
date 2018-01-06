require 'httparty'
require 'json'

class GetSpecifiedRange
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_specified_range(start_date,end_date)
    @results =JSON.parse(self.class.get("/rest/v1/feed?start_date=#{start_date}&end_date=#{end_date}&api_key=#{@apiKey}").body)
  end

  def get_main_links
   @results['links']
  end

  def get_next
    get_main_links['next']
  end

  def get_previous
    get_main_links['prev']
  end

  def get_self
    get_main_links['self']
  end

  def get_element_count
   @results['element_count']
  end

  def get_near_earth_objects
    @results['near_earth_objects']
  end

  def selectDates
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
  end


  def template(field)
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
    keys.each do |date|
      @neo[date].each do |objects|
        @my_array.push(objects[field])
      end
    end
    @my_array
  end

  def template2(field,field2)
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
    keys.each do |date|
      @neo[date].each do |objects|
        @my_array.push(objects[field][field2])
      end
    end
    @my_array
  end

  def template3(field,field2,field3)
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
    keys.each do |date|
      @neo[date].each do |objects|
        @my_array.push(objects[field][field2][field3])
      end
    end
    @my_array
  end

  def template4(field,field2,field3,field4)
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
    keys.each do |date|
      @neo[date].each do |objects|
        @my_array.push(objects[field][field2][field3][field4])
      end
    end
    @my_array
  end

  def get_all_links
    template('links')
  end

  def get_all_links_self_key_value
    template2('links','self')
  end

  def get_all_neo_reference_id_key_value
    template('neo_reference_id')
  end

  def get_all_name_key_value
    template('name')
  end


  def get_nasa_jpl_url_key_value
    template('nasa_jpl_url')
  end

  def get_absolute_magnitude_h_key_value
    template('absolute_magnitude_h')
  end

  def get_estimated_diameter_key_value
    template('estimated_diameter')
  end

  def get_estimated_diameter_kilometers_key_value
    template2('estimated_diameter','kilometers')
  end

  def get_estimated_diameter_kilometers_min_key_value
    template3('estimated_diameter','kilometers','estimated_diameter_min')
  end

  def get_estimated_diameter_kilometers_max_key_value
    template3('estimated_diameter','kilometers','estimated_diameter_max')
  end

  def get_estimated_diameter_meters_key_value
    template2('estimated_diameter','meters')
  end

  def get_estimated_diameter_meters_min_key_value
    template3('estimated_diameter','meters','estimated_diameter_min')
  end

  def get_estimated_diameter_meters_max_key_value
    template3('estimated_diameter','meters','estimated_diameter_max')
  end

  def get_estimated_diameter_miles_key_value
    template3('estimated_diameter','miles','estimated_diameter_min')
  end

  def get_estimated_diameter_miles_max_key_value
    template3('estimated_diameter','miles','estimated_diameter_max')
  end

  def get_estimated_diameter_feet_key_value
    template2('estimated_diameter','feet')
  end

  def get_estimated_diameter_feet_min_key_value
    template3('estimated_diameter','feet','estimated_diameter_min')
  end

  def get_estimated_diameter_feet_max_key_value
    template3('estimated_diameter','feet','estimated_diameter_max')
  end

  def get_is_potentially_hazardous_asteroid_key_value
    template('is_potentially_hazardous_asteroid')
  end

  def get_close_approach_data_key_value
    template('close_approach_data')
  end

  def get_all_close_approach_dates
    template3('close_approach_data',0,'close_approach_date')
  end

  def get_all_epoch_date_close_approaches
    template3('close_approach_data',0,'epoch_date_close_approach')
  end

  def get_all_relative_velocities
    template3('close_approach_data',0,'relative_velocity')
  end


  def get_all_relative_velocity_kps
    template4('close_approach_data',0,'relative_velocity','kilometers_per_second')

  end

  def get_all_relative_velocity_kphs
    template4('close_approach_data',0,'relative_velocity','kilometers_per_hour')
  end

  def get_all_relative_velocity_mphs
    template4('close_approach_data',0,'relative_velocity','miles_per_hour')
  end

  def get_all_miss_distances
    template3('close_approach_data',0,'miss_distance')
  end

  def get_all_miss_distance_astronomicals
    template4('close_approach_data',0,'miss_distance','astronomical')
  end

  def get_all_miss_distance_lunars
    template4('close_approach_data',0,'miss_distance','lunar')
  end

  def get_all_miss_distance_miles
    template4('close_approach_data',0,'miss_distance','miles')
  end

  def get_all_miss_distance_kilometers
    template4('close_approach_data',0,'miss_distance','kilometers')
  end

  def get_all_orbiting_bodies
    template3('close_approach_data',0,'orbiting_body')
  end

end

# x = GetSpecifiedRange.new
# x.get_specified_range('2015-09-08','2015-09-07')
# puts x.get_all_neo_reference_id_key_value
# # puts x.selectDates
# # puts x.get_all_orbiting_bodies
