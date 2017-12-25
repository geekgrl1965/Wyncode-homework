# Class = template
# Objects = things created by classes
# Method = getter


class Car
  attr_accessor = :color #the same as creating get_color and set_color methods
  @color = nil   #instance variable
  @type = nil

  def initialize (color, type) #color is instance argument here
    @color = color             #color is instance variable here
    @type = type
  end
end

p lucille = Car.new("black", "sedan")   #instance of the class Car. .new is initialize
