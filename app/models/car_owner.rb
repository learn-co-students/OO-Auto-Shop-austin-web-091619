require_relative 'car'
require_relative 'mechanic'

class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def cars
    Car.all.select { |car| car.owner == self}
  end

  def mechanics
    mechanics = []
    Mechanics.each do |mechanic|
      cars.each do |car|
        if mechanic.specialty == car.classification
          mechanics << mechanic
        end
      end
    end
    mechanics
  end

  # CLASS METHODS BELOW

  def self.all
    @@all
  end

  def self.avg_cars_owned
    Car.all.length / Car_owner.all.length
  end

end
