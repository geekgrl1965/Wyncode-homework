# class Car
# end
#
# puts Car.class
# print Car.methods
#
# my_car=Car.new
# puts my_car.class
# print my_car.methods
#
# print Car.ancestors

#duplicated code - same attributes in both classes:
class Car
  attr_accessor :engine
  attr_accessor :tires
end

class Motorcycle
  attr_accessor :engine
  attr_accessor :tires
end

#use inheritance to eliminate duplicate code
class Vehicle
  attr_accessor :engine
  attr_accessor :tires
end

class Car < Vehicle  #makes class Car inherit methods from class Vehicle
end

class Motorcycle < Vehicle
end

print Car.ancestors
puts Car.superclass


#Mixins - modules that can be shared across classes
module Talkative
  def speak
      puts "Hello World"
  end
end

class Kitt < Car
  include Talkative
end
