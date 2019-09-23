require_relative 'car_owner'
require_relative 'mechanic'

class Car

  attr_reader :owner, :make, :model, :classification

  @@all = []

  def initialize(owner = nil, make, model, classification)
    @owner = owner
    @make = make
    @model = model
    @classification = classification

    @@all << self
  end

  def mechanics
    Mechanic.all.select { |mechanic| mechanic.specialty == self.classification}
  end

  # CLASS METHODS BELOW

  def self.all
    @@all
  end

  def self.all_classifications
    @@all.map { |car| car.classification}
  end

end
