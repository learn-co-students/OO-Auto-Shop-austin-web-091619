class CarOwner
  attr_reader :car_owner, :cars

# CLASS METHODS
    @@all = []

    def self.all
      @@all
    end

    def self.avg_n_cars
      n_cars = Car.all.length.to_f
      n_owners = CarOwner.all.length.to_f
      avg_n_cars = n_cars / n_owners
      avg_n_cars
    end

# INSTANCE METHODS

  def initialize(car_owner)
    @car_owner = car_owner

    @@all << self 
  end

  def car_list
    all_cars = Car.all
    my_cars = all_cars.select{|car| car.car_owner == self}
    my_cars
  end

  def mechanic_list
    my_cars = self.car_list
    my_mechanics = my_cars.map{|car| car.mechanic_name}
  end


end
