# In previous exercises we made instance variables that we can use to store
# the attriubutes of an instance(member of that class), but what if we want
# to store all instances(members) of that class in an array or hash?
# Create a class variable named @@everyone and set it equal to an empty array.
# In this array we are going to store all the instances of Person, try to do
# this by creating a save method. The save method should also print
# @@everyone out to the console, so we can see all the people that are
# in our storage.

# class Person
#   @@everyone = []
#   attr_accessor :name, :hair_color
#
#   def initialize(name, hair_color)
#     @name = name
#     @hair_color = hair_color
#     @@everyone << self
#   end
#
#   def self.save_all_people
#       @@everyone
#       p @@everyone
#   end
# end
#
# karen = Person.new "Karen", "brown"
# ianto = Person.new "Ianto", "champagne"
# skye = Person.new "Skye", "grey"
#
# Person.save_all_people

class Person
  @@everyone = []
  attr_accessor :name, :hair_color

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color
  end

  def save
      @@everyone << self
      p @@everyone
  end
end

karen = Person.new "Karen", "brown"
ianto = Person.new "Ianto", "champagne"
skye = Person.new "Skye", "grey"

p karen.save
p ianto.save
p skye.save
