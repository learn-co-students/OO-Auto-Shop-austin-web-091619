class Car
  attr_reader :make, :model

# CLASS METHODS
  @@all = []

  def self.all
    @@all
  end

  def initialize(make, model, classification, car_owner, mechanic_name)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic_name = mechanic_name
    @@all << self

  end

# INSTANCE METHODS

end
