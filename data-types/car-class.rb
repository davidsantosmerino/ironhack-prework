require 'pry'

class Transport
  def initialize(name, wheels_number)
    @name = name
    @wheels_number = wheels_number
  end
  def describe
    "It's a #{@name} and has #{@wheels_number} wheels."
  end
end

class Cycle < Transport
end

class Car < Transport
  attr_accessor :brand, :model

  def initialize(name, wheels_number, brand, model)
    super(name, wheels_number)
    @brand = brand
    @model = model
  end
  def honk
    puts "Beeeeeep!"
  end
  def to_s
    @brand + " " + @model 
  end
  def describe
    "I'm a car (#{self.to_s})"
  end
end

my_cycle = Cycle.new "cycle", 2
my_car = Car.new "car", 4, "Citroen", "C3"
binding.pry

