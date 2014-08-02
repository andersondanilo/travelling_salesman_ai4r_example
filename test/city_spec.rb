require_relative '../lib/city'

describe City, '#calc_cost' do
  it 'should return 0 for same position' do
    city1 = City.new(5, 5)
    city2 = City.new(5, 5)
    expect(city1.calc_cost(city2)).to eq(0)
  end

  it 'should return 1' do
    city1 = City.new(5, 5)
    city2 = City.new(6, 6)
    expect(city1.calc_cost(city2)).to eq(1)
  end

  it 'should return 2' do
    city1 = City.new(5, 5)
    city2 = City.new(3, 3)
    expect(city1.calc_cost(city2)).to eq(2)
  end

  it 'should return 3' do
    city1 = City.new(1, 1)
    city2 = City.new(4, 1)
    expect(city1.calc_cost(city2)).to eq(3)
  end

  it 'should return 3 again' do
    city1 = City.new(1, 1)
    city2 = City.new(4, 4)
    expect(city1.calc_cost(city2)).to eq(3)
  end

  it 'should return 4' do
    city1 = City.new(1, 1)
    city2 = City.new(4, 5)
    expect(city1.calc_cost(city2)).to eq(4)
  end
end