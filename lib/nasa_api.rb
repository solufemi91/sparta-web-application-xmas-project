require_relative 'services/get_lookup_service'
require_relative 'services/get_browse_service'

class Nasa_api

  def lookup_service
    GetLookup.new
  end

  def browse_service
    GetListOfNeo.new
  end

end
