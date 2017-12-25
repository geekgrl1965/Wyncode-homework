# Now that you have everyone stored in a class variable, and you gave the
# Person class the ability(method) to riot, let’s adjust the riot method
# to print out all the names of the people who are rioting. So when I call
# Person.riot my output should be the following
#
# Output:
#  The people are rising up!
#  Sandy is rioting!
#  Joe is rioting!
#  Tim is rioting!

class Person
  @@everyone = []
  attr_accessor :name, :hair_color

  def initialize(name, hair_color)
    @name = name
    @hair_color = hair_color

  end

  def save
      @@everyone << self
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each do |person|
    puts "#{person.name} is rioting!"
    end
  end
end

sandy = Person.new "Sandy", "blonde"
sandy.save
joe = Person.new "Joe", "ginger"
joe.save
tim = Person.new "Tim", "brown"
tim.save

Person.riot
