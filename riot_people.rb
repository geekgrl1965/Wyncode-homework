# As of now we know how to give behavior to instances of a class,
# but what if we want to give a behavior to the class itself. In this
# exercise define a class method called riot. When riot is called on
# the Person class you should puts to the console a string: “The people
# are rising up!”.

class Person
  attr_accessor :name, :hair_color

  @@everyone = []

  def self.riot
    puts "The people are rising up!"
  end

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def save
    @@everyone << self
  end

  def sing
    puts "#{@name} is singing "
  end
end

Person.riot 
