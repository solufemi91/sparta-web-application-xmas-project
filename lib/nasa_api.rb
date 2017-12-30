require_relative 'services/get_lookup_service'
require_relative 'services/get_browse_service'
require_relative 'services/get_feed_service'

class Nasa_api

  def lookup_service
    GetLookup.new
  end

  def browse_service
    GetListOfNeo.new
  end

  def feed_service
    GetSpecifiedRange.new
  end

end
