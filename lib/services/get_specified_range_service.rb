require 'httparty'
require 'json'

class GetSpecifiedRange
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_specified_range(start_date,end_date)
    @a_list_of_neo =JSON.parse(self.class.get("/rest/v1/feed?start_date=#{start_date}&end_date=#{end_date}&detailed=true&api_key=#{@apiKey}").body)
  end

end

x = GetSpecifiedRange.new
puts x.get_specified_range('2017-12-19','2017-12-25')
