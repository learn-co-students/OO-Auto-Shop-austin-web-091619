class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all =[]

  def initialize(make, model, classification, owner, mechanic ="dealer")
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    # Get a list of all cars
    @@all
  end
  def self.classifications
    # Get a list of all car classifications
    self.all.map{|car| car.classification}.uniq
  end

  def specialty_mechanics
    # Get a list of mechanics that have an expertise
    # that matches the car classification
    Mechanic.all.select{|mechanic| mechanic.specialty == self.classification}
  end
end
