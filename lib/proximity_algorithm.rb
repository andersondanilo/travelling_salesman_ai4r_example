require_relative './algorithm'
require_relative './path'

class ProximityAlgorithm

  def create_path(start_city, other_cities)
    path = Path.new
    path.cities << start_city
    last = start_city
    while other_cities.length > 0
      best = nil
      other_cities.each do |city|
        if not best or last.calc_cost(city) < last.calc_cost(best)
          best = city
        end
      end
      other_cities.delete best
      path.cities << best
    end
    path
  end

end