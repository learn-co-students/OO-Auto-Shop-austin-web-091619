require_relative "car_owner"
require_relative "car"
require_relative "mechanic"

owner1 = CarOwner.new("Ken")
owner2 = CarOwner.new("Saul")

mechanic1 = Mechanic.new("Jeff", "Luxury")
mechanic2 = Mechanic.new("James", "Sports")

car1 = Car.new("BMW", "5 series", "Luxury", owner1, mechanic1)
car2 = Car.new("Tesla", "Model 3", "Luxury", owner2, mechanic1)
car3 = Car.new("Porsche", "911", "Sports", owner1, mechanic2)

# puts "Get a list of all owners"
# p CarOwner.all

# puts "Get a list of all cars"
# p Car.all

# puts "Get a list of all mechanics"
# p Mechanic.all

# puts "Get a list of all the cars that a specific owner has"
# p owner1.car_list

# puts "Get a list of all the mechanics that a specific owner goes to"
# p owner1.mechanic_list

# puts "Get the average amount of cars owned for all owners"
# p CarOwner.avg_n_cars

# puts "Get a list of all car classifications"
# p Car.classifications

# puts "Get a list of mechanics that have an expertise that matches the car classification"
# p car1.mechanic_match_classification

# puts "Get a list of all cars that a mechanic services"
# p mechanic1.cars_serviced

# puts "Get a list of all the car owners that go to a specific mechanic"
# p mechanic1.car_owner_list

# puts "Get a list of the names of all car owners who go to a specific mechanic"
# p mechanic1.car_owner_names