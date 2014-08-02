require_relative '../lib/path'
require_relative '../lib/city'

describe Path, '#cost' do

  it 'should calculate cost equal to 1' do
    path = Path.new
    path.cities << City.new(5, 5)
    path.cities << City.new(6, 6)
    expect(path.cost).to eq(1)
  end

  it 'should calculate cost equal to 2' do
    path = Path.new
    path.cities << City.new(5, 5)
    path.cities << City.new(7, 7)
    expect(path.cost).to eq(2)
  end

  it 'should calculate cost equal to 10' do
    path = Path.new
    path.cities << City.new(5, 5)
    path.cities << City.new(10, 10)
    path.cities << City.new(5, 5)
    expect(path.cost).to eq(10)
  end

  it 'should calculate cost equal to 5' do
    path = Path.new
    path.cities << City.new(5, 5)
    path.cities << City.new(5, 5)
    path.cities << City.new(10, 10)
    path.cities << City.new(10, 10)
    expect(path.cost).to eq(5)
  end

end