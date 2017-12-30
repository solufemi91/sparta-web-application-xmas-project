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
    get_main_links['next']
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


  def get_links
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
    keys.each do |date|
      @neo[date].each do |objects|
        @my_array.push(objects['links'])
      end
    end
    @my_array
  end

  def get_links_self_key_value
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
    keys.each do |date|
      @neo[date].each do |objects|
        @my_array.push(objects['links']['self'])
      end
    end
    @my_array
  end

  def get_neo_reference_id_key_value
    @my_array = []
    @neo = get_near_earth_objects
    keys = @neo.keys
    keys.each do |date|
      @neo[date].each do |objects|
        @my_array.push(objects['neo_reference_id'])
      end
    end
    @my_array
  end






end

x = GetSpecifiedRange.new
x.get_specified_range('2015-09-08','2015-09-07')
puts x.get_neo_reference_id_key_value
