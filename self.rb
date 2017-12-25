# What does self represent? To answer this question, figure out what self is in various contexts:
# irb
# a plain Ruby file
# a method
# a class
# a method within a class
# Submit not only your answer, but the code you used to discover that answer.


puts self        #in irb, self is an object called main
puts self        #in a plain Ruby file, self is also an object called main

def sample_method    #in a method, self is main
  p "Self is #{self}"
end
sample_method

class Wyncoder   #in a class, self is the class itself (Wyncoder)
    p "Self is: #{self}"
end

class Wyncoder   #in a method within a class, self is the object ID
  attr_accessor :hair_color
  attr_accessor :name

  def initialize (hair_color, name)
    @hair_color = hair_color
    @name = name
  end

  def code
    p "Self is: #{self}"
  end

end

walter = Wyncoder.new "brown", "Walter"
walter.code


# Output:
# main
# main
# "Self is main"
# "Self is: Wyncoder"
# "Self is: #<Wyncoder:0x007fb3da844c58>"
