require 'httparty'
require 'json'

class GetNeoToday
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "jGx3T69k38ueDfGl1kK2i1haHghETqwSfJwGShyr"
  end

  def get_neo_today
    @a_list_of_neo =JSON.parse(self.class.get("/rest/v1/feed/today?detailed=true&api_key=#{@apiKey}").body)
  end

end

x = GetNeoToday.new

puts x.get_neo_today
