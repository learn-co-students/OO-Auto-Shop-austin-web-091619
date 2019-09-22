class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    # Get a list of all mechanics
    @@all
  end

  def cars
    # Get a list of all cars that a mechanic services
    Car.all.select{|car| car.mechanic == self}
  end

  def customers
    # Get a list of all the car owners that go to a specific mechanic
    self.cars.map{|car| car.owner}.uniq
  end

  def customer_names
    # Get a list of the names of all car owners
    #  who go to a specific mechanic
    self.customers.map{|car_owner| car_owner.name}
  end



end
