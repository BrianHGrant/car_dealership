require('rspec')
require('dealership')

describe (Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('will return the name of a dealership') do
    test_dealership = Dealership.new('Brian and Sebastian\'s Used Cars')
    expect(test_dealership.name()).to eq('Brian and Sebastian\'s Used Cars')
    end
  end

  describe('#id') do
    it('will return the id of a dealership') do
    test_dealership = Dealership.new('Brian and Sebastian\'s Used Cars')
    expect(test_dealership.id()).to eq(1)
    end
  end

  describe('#cars') do
    it('will return an empty array of cars for new dealership') do
    test_dealership = Dealership.new('Brian and Sebastian\'s Used Cars')
    expect(test_dealership.cars()).to eq([])
    end
  end

  describe('.all') do
    it('will return an empty array of dealerships') do
      expect(Dealership.all()).to eq([])
    end
  end

  describe('#save') do
    it('will store a dealrship in the array of dealerships') do
      test_dealership = Dealership.new('Brian and Sebastian\'s Used Cars')
      test_dealership.save()
      expect(Dealership.all()).to eq([test_dealership])
    end
  end

  describe('.find') do
    it('returns a dealership by its id number') do
      test_dealership = Dealership.new('Bob\'s Used Cars')
      test_dealership.save()
      test_dealership2 = Dealership.new('Jane\'s Cars')
      test_dealership2.save()
      expect(Dealership.find(test_dealership.id())).to eq(test_dealership)
    end
  end
end
