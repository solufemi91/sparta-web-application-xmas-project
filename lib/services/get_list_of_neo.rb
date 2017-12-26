require 'httparty'
require 'json'

class GetListOfNeo
  include HTTParty

  base_uri 'https://api.nasa.gov/neo'

  def initialize
    @apiKey = "DEMO_KEY"
  end

  def get_list_of_neo(page,size)
    @list_of_neo =JSON.parse(self.class.get("/rest/v1/neo/browse?page=#{page}&size=#{size}&api_key=#{@apiKey}").body)
  end
end

x = GetListOfNeo.new
puts x.get_list_of_neo('1','1')
