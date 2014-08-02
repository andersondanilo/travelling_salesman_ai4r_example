
class City
  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def calc_cost(other)
    x1, y1 = @x, @y
    x2, y2 = other.x, other.y
    cost = 0
    while x1 != x2 || y1 != y2

      if x1 < x2
        x1 += 1
      elsif x1 > x2
        x1 -= 1
      end

      if y1 < y2
        y1 += 1
      elsif y1 > y2
        y1 -= 1
      end

      cost += 1
    end
    cost
  end
end