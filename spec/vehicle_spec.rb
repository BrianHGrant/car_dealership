require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#initialize') do
    it ('it will enter a vehicle and return the attributes') do
      test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => "2000", :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.make()).to eq("Toyota")
    end
  end

  describe('.all') do
    it("is empty before saving a new vehicle") do
      expect(Vehicle.all()).to eq([])
    end
  end

  describe('#save') do
    it('add vehicle to the array of saved vehicles') do
      test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => "2000", :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      test_vehicle.save()
      expect(Vehicle.all()).to eq([test_vehicle])
    end
  end

  describe('.clear') do
    it('clear the stored vehicles from save vehicle array') do
      Vehicle.clear()
      expect(Vehicle.all()).to eq([])
    end
  end

  describe('#age') do
    it('will return the age of the vehicle') do
      test_vehicle = Vehicle.new({:make=> "Toyota", :model => "Prius", :year => "2000", :color => "blue", :engine_size => "4L", :number_of_doors => "4"})
      expect(test_vehicle.age()).to eq(16)
    end
  end



end
