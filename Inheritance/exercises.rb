module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.bar #class method
    puts "class method"
  end

  def to_s
    "My car is a #{color}, #{year}, #{@model}!"
  end

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
end

my_car = MyCar.new(1997, 'chevy lumina', 'white')
Vehicle.number_of_vehicles

puts MyCar.ancestors
puts MyTruck.ancestors

my_car.speed_up(20)
my_car.current_speed