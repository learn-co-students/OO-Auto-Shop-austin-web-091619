require_relative "mechanic"

class Car
  attr_reader :make, :model, :car_owner, :mechanic_name, :classification

# CLASS METHODS
  @@all = []

  def self.all
    @@all
  end

  def self.classifications
    all_cars = Car.all
    classifications = all_cars.map{|car| car.classification}
    classifications.uniq
    
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

  def mechanic_match_classification
    all_cars = Car.all
    this_car = all_cars.select{|car| car == self}
    this_car_class = this_car.map{|car| classification}[0] # car class
    all_mechanics = Mechanic.all
    match = all_mechanics.select{|mechanic| mechanic.specialty == this_car_class} 
    match
    
  end




end
