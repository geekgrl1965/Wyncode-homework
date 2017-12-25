#A class is like a factory, an instance of a class is like the product
#produced by the factory
#Creating a class builds the factory,  an instance of a class creates the product
#a_table = Table.new  creates a new table, stored in variable called a_table
#instance variables are available throughout class

#deck of cards - create 52 cards inside of initialize.

class Table              #template for creating a single instance of a table
  # attr_reader :num_legs  #attribute reader allows instance variable to be seen outside class.
  # attr_writer :num_legs  #takes instance variable name as an argument
  attr_accessor :num_legs #replaces reader and writer

  def initialize (num_legs)#guaranteed to be called
      @tabletop = []     #creates array containing [input from put_on]
      @num_legs = num_legs  #instance variable (one @)
  end

  # def num_legs           #getter pattern - method name matches instance variable
  #     @num_legs          #gets value from def initialize
  # end                    #can be replaced with attr_reader :num_legs

  def put_on (something) #methods define what table can do
      @tabletop << something
  end

  def look_at
      @tabletop
  end

  # def num_legs=(new_number_of_legs) #setter pattern - changes value of instance variable
  #   @num_legs = new_number_of_legs  #can be replaced with attr_writer
  # end
end

a_table = Table.new 4 #sets value of num_legs to 4
a_table.put_on (1)
a_table.put_on (2)

p a_table.look_at
puts "This table has #{a_table.num_legs} legs"
puts "Actually, I want to chop off a leg"
a_table.num_legs = 3
puts "This table now has #{a_table.num_legs} legs"
