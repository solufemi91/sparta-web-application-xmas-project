require 'httparty'
require 'json'

class GetInfoOfSpecificNeo
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_info_of_specific_neo(asteroid_id)
    @a_specific_neo =JSON.parse(self.class.get("/rest/v1/neo/#{asteroid_id}?api_key=#{@apiKey}").body)
  end

end
x = GetInfoOfSpecificNeo.new
puts x.get_info_of_specific_neo('3729835')
