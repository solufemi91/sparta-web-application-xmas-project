require 'httparty'
require 'json'

class GetStats
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_stats
    @stats =JSON.parse(self.class.get("/rest/v1/stats?api_key=#{@apiKey}").body)
  end

end

x = GetStats.new

puts x.get_stats
