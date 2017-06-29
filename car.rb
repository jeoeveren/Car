# car.rb

class Car
  attr_accessor :brand, :model, :passengers

  def initialize(brand, model)
    @brand      = brand
    @model      = model
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
    passenger.set_car(self)
  end

  def print_passengers
    @passengers.each do |passenger|
      puts "#{passenger.first_name} #{passenger.last_name}"
      if passenger.driver
        puts "--> Is also the driver of this car."
        next
      end
      puts "--> Is just a passenger"
      puts passenger.car.brand
    end
  end

end
