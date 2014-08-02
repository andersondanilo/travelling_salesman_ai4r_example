require "ai4r/genetic_algorithm/genetic_algorithm"
require_relative './algorithm'
require_relative './path'

class GeneticAlgorithm

  def create_path(start_city, other_cities)
    cities = [start_city]
    other_cities.each do |city|
      cities << city
    end
    data_set = create_data_set cities
    Ai4r::GeneticAlgorithm::Chromosome.set_cost_matrix(data_set)
    search = Ai4r::GeneticAlgorithm::GeneticSearch.new(800, 300)
    result = search.run
    path_from result.data, cities
  end

  def create_data_set(cities)
    data_set = []
    cities.each do |city1|
      cost_set = []
      cities.each do |city2|
        cost_set << city1.calc_cost(city2)
      end
      data_set << cost_set
    end
    data_set
  end

  def path_from(result, cities)
    path = Path.new
    result.each do |index|
      path.cities << cities[index] 
    end
    path
  end

end