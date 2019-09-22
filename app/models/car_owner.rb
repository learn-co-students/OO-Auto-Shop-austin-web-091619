class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    # Get a list of all owners 
    @@all
  end
 
  def cars
    # Get a list of all the cars that a specific owner has
    Car.all.select{|car| car.owner== self}
  end
  
  def mechanics
    # Get a list of all the mechanics that a specific owner goes to
    self.cars.map{|car| car.mechanic}.uniq
  end

  def self.avg_cars
    # Get the average amount of cars owned for all owners
    # sum an array of the number of cars owned by all c_o's 
    #and divide by the total number of c_o's
    car_count = self.all.map {|owner| owner.cars.count}.sum
    car_owner_count = self.all.count * 1.0
    car_count/car_owner_count

  end
  

end
