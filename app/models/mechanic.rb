class Mechanic
  attr_reader :mechanic_name, :specialty, :car

  @@all = []

  # CLASS METHODS

  def self.all
    @@all
  end

def initialize(mechanic_name, specialty)
  @mechanic_name = mechanic_name
  @specialty = specialty
  @@all << self 

end

#INSTANCE METHODS
  def cars_serviced
    all_cars = Car.all
    my_serviced = all_cars.select{|car| car.mechanic_name == self}
    my_serviced

  end

  def car_owner_list
    my_serviced = self.cars_serviced
    car_owners = my_serviced.select{|car| car.car_owner}
    car_owners

  end

  def car_owner_names
    my_cars = self.car_owner_list
    car_owner_name = my_cars.map{|car| car.car_owner}
    car_owner_name = car_owner_name.map{|car| car.car_owner}
    car_owner_name.uniq
  end

end
