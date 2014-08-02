
class Path
  attr_reader :cities

  def initialize
    @cities = []
  end

  def cost
    last = nil
    sum = 0
    @cities.each do |city|
      if last
        sum += last.calc_cost city
      end
      last = city
    end
    sum
  end

end