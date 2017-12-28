require_relative 'services/get_lookup_service'

class Nasa_api

  def lookup_service
    GetLookup.new
  end

end
