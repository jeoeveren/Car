# passenger.rb

class Passenger
  attr_accessor :first_name, :last_name, :driver, :car

  def initialize(first_name, last_name, driver = false)
    @first_name = first_name
    @last_name  = last_name
    @driver     = driver
  end

  def set_car(car)
    @car = car
  end

end
