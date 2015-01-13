require('rspec')
require('places')

describe(Places) do

  before() do
    Places.clear()
  end

  describe("#location") do
    it("returns the location") do
    new_location = Places.new("Paris")
    expect(new_location.location()).to(eq("Paris"))
    end
  end

  describe(".all") do
    it("is empty") do
      expect(Places.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the location") do
      new_location = Places.new("Ecuador")
      new_location.save()
      expect(Places.all()).to(eq([new_location]))
    end
  end

  describe(".clear") do
    it("clears the location list") do
      Places.new("Syria").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
