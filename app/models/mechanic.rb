require_relative 'car_owner'
require_relative 'car'

class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
end

def cars
  Car.all.select { |car| car.classification == self.specialty}
end

def car_owners
  all_cars = cars.map { |car| car.owner}
  all_cars.select { |car| car.owner}
end

# CLASS METHODS BELOW

def self.all
  @@all
end

end
