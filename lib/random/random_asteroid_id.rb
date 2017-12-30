require 'yaml'

class RandomAsteroidId

  def get_random_asteroid_by_id
    @yaml = YAML.load_file('asteroid_id.yml')
    @yaml[rand(@yaml.length)]

  end

end

# x = RandomAsteroidId.new
# puts x.get_random_asteroid_by_id
