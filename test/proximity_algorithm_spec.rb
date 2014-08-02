require_relative '../lib/path'
require_relative '../lib/city'
require_relative '../lib/proximity_algorithm'

describe ProximityAlgorithm, '#create_path' do

  it 'should create path linear' do
    city1 = City.new(5, 5)
    city2 = City.new(10, 10)
    city3 = City.new(20, 20)
    cities = [city1, city2, city3]
    start_city = City.new(30, 30)
    expected = [start_city, city3, city2, city1]
    algorithm = ProximityAlgorithm.new()
    path = algorithm.create_path start_city, cities
    expect(path.cities).to eq(expected)
  end

  it 'should create path not linear' do
    city1 = City.new(5, 5)
    city2 = City.new(10, 10)
    city3 = City.new(60, 60)
    cities = [city1, city2, city3]
    start_city = City.new(30, 30)
    expected = [start_city, city2, city1, city3]
    algorithm = ProximityAlgorithm.new()
    path = algorithm.create_path start_city, cities
    expect(path.cities).to eq(expected)
  end
end