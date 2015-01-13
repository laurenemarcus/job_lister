require('rspec')
require('jobs')

describe(Job) do

  before() do
    Job.clear()
  end

  describe("#employer") do
    it("returns the employer") do
    new_employer = Job.new("Epicodus", "Student", "Portland", "Write code.")
    expect(new_employer.employer()).to(eq("Epicodus"))
    end
  end

  describe("#title") do
    it("returns the title") do
    new_employer = Job.new("Epicodus", "Student", "Portland", "Write code.")
    expect(new_employer.title()).to(eq("Student"))
    end
  end

  describe("#location") do
    it("returns the location") do
    new_employer = Job.new("Epicodus", "Student", "Portland", "Write code.")
    expect(new_employer.location()).to(eq("Portland"))
    end
  end

  describe("#description") do
    it("returns the description") do
    new_employer = Job.new("Epicodus", "Student", "Portland", "Write code.")
    expect(new_employer.description()).to(eq("Write code."))
    end
  end

  describe(".all") do
    it("is empty") do
      expect(Job.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves all the job attributes") do
      new_employer = Job.new("Epicodus", "Student", "Portland", "Write code.")
      new_employer.save()
      expect(Job.all()).to(eq([new_employer]))
    end
  end

  describe(".clear") do
    it("clears the job list") do
      Job.new("Epicodus", "Student", "Portland", "Write code.").save()
      Job.clear()
      expect(Job.all()).to(eq([]))
    end
  end
end
