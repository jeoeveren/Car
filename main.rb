# main.rb

require_relative "car.rb"
require_relative "passenger.rb"

#instance of car
nice_car = Car.new("BMW", "3D Touring")

#inastances off paseengers -> but with no relation
jeroen = Passenger.new("Jeroen", "van Oeveren", true)
anouk = Passenger.new("Anouk", "van Oeveren")
milan = Passenger.new("Milan", "van Oeveren")

#this adds the objects to the object nice_car
nice_car.add_passenger(jeroen)
nice_car.add_passenger(anouk)
nice_car.add_passenger(milan)

#nice_car.print_passengers

nice_car.passengers.each do |passenger|
  puts "#{passenger.first_name} #{passenger.last_name}"
  if passenger.driver
    puts "--> Drives the #{passenger.car.brand}"
  end
end

puts jeroen.car.brand
