require 'httparty'
require 'json'

class GetListOfNeo
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_list_of_neo
    @list_of_neo =JSON.parse(self.class.get("/rest/v1/neo/browse?api_key=#{@apiKey}").body)
  end
end

x = GetListOfNeo.new
puts x.get_list_of_neo
