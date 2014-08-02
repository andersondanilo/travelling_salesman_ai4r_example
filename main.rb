#!/usr/bin/env ruby
require_relative 'lib/city'
require_relative 'lib/proximity_algorithm'
require_relative 'lib/genetic_algorithm'

5.times do
  cities = []
  start_city = City.new(rand(100), rand(100))
  10.times do
    cities << City.new(rand(100), rand(100))
  end

  puts ""
  puts "New Cost Test:"

  proximity = ProximityAlgorithm.new
  path1 = proximity.create_path start_city, cities.dup
  puts "Proximity Algorithm = #{path1.cost}"

  genetic = GeneticAlgorithm.new
  path1 = genetic.create_path start_city, cities.dup
  puts "Genetic Algorithm = #{path1.cost}"

end