require_relative "car_owner"
require_relative "car"
require_relative "mechanic"

owner1 = CarOwner.new("Ken")
owner2 = CarOwner.new("Saul")

mechanic1 = Mechanic.new("Jeff", "Luxury")
mechanic2 = Mechanic.new("James", "Sports")

car1 = Car.new("BMW", "5 series", "Luxury", owner1, mechanic1)
car2 = Car.new("Tesla", "Model 2", "Luxury", owner2, mechanic1)
car3 = Car.new("Porsche", "911", "Sports", owner1, mechanic2)


# puts "Get a list of all owners"
# p CarOwner.all

# puts "Get a list of all cars"
# p Car.all

# puts "Get a list of all mechanics"
# p Mechanic.all




