require_relative 'services/get_lookup_service'
require_relative 'services/get_browse_service'
require_relative 'services/get_feed_service'
require_relative 'random/random_asteroid_id'

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

  def random_asteroid
    RandomAsteroidId.new
  end

end
