require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# test suite
tim = CarOwner.new("tim")
bob = CarOwner.new("bob")
kathy = CarOwner.new("Kathy")



murph = Mechanic.new("Murphy's classics", "classic")
caliber = Mechanic.new("caliber", "American")
rising = Mechanic.new("Rising sun", "foreign")
vw = Mechanic.new("VW specialists", "foreign")

beatle = Car.new("Volkswagen", "Beatle", "foreign", tim, rising)
beamer = Car.new("BMW", "M3", "foreign", bob, rising)
prius = Car.new("Toyota", "prius", "foreign", tim, rising)
truck = Car.new("Dodge", "Ram", "American", kathy, caliber)
stang = Car.new("Ford", "mustang", "classic", bob, murph)




# CarOwner
# Get a list of all owners
CarOwner.all
# Get a list of all the cars that a specific owner has
bob.cars
# Get a list of all the mechanics that a specific owner goes to
bob.mechanics
# Get the average amount of cars owned for all owners
CarOwner.avg_cars
# Car

# Get a list of all cars
Car.all
# Get a list of all car classifications
Car.classifications
# Get a list of mechanics that have an expertise that matches the car classification
beatle.specialty_mechanics
# Mechanic

# Get a list of all mechanics
Mechanic.all
# Get a list of all cars that a mechanic services
rising.cars
# Get a list of all the car owners that go to a specific mechanic
rising.customers
# Get a list of the names of all car owners who go to a specific mechanic
rising.customer_names
binding.pry
