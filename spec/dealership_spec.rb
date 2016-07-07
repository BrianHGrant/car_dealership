require('rspec')
require('dealership')

describe (Dealership) do
  before() do
    Dealership.clear()
  end

  describe('name') do
    it('will return the name of a dealership') do
    test_dealership = Dealership.new('Brian and Sebastian\'s Used Cars')
    expect(test_dealership.name()).to eq('Brian and Sebastian\'s Used Cars')
    end
  end

  describe('id') do
    it('will return the id of a dealership') do
    test_dealership = Dealership.new('Brian and Sebastian\'s Used Cars')
    expect(test_dealership.id()).to eq(1)
    end
  end

  describe('.all') do
    it('will return an empty array of dealerships') do
      expect(Dealership.all()).to eq([])
    end
  end
end
