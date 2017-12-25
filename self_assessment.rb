# 1. Command Line
# What are the commands to do each of these the following tasks:
# How do you change into a directory? cd
# How do you see all of the files and folders in a directory? ls
# How do you create a file? touch
# How do you create a directory? mkdir
# How do you see the hidden files and folders in a directory? ls -a
# How do you run a ruby file? ruby file.rb
# How do you add a line to the end of a file? echo
# How do exit a program that is running an infinite loop or taking
#   too long to execute? ctrl + c
# What is a path? dir/dir/file

# 2. Ruby Syntax
# What is a method? action performed on an object
# What does it mean if a method name ends in a exclamation mark?
#     it will change the object
# What does it mean if a method name ends in a question mark?
#     it will return true/false
# What is an argument? value passed to a method
# How can you find out the type of something in ruby? .class method

# 2. Ruby Data Types
# What is a Fixnum? Integer
# What methods exist on a Fixnum that you might use? + == * %
# What is a Hash? group of key/value pairs
# Please create a Hash that represents your favorite music album,
#   it should have at least 5 keys. At least one of those key value pairs
#   should be nested.
# puts big_bang = {:sheldon => "doctor", :leonard => "doctor", :raj => "doctor",
  # :amy => "doctor", :howard => "not a doctor"}

# Please store the Hash above in a variable.

# Please use the variable above to fetch any piece of information about your
  # favorite music album.
  # puts big_bang[:howard]

# Create a Hash to represent a business address, but use symbols as keys
# Store the address Hash in a variable
# Please use the address Hash to output a string like this: "Wyncode's address
#   is 425 N Andrews Blvd, #995 in Ft. Lauderdale, FL, 33321"
# Please create an array of 5 words.
# puts favorite_foods = ["french fries", "bacon", "doughnuts", "cheese", "wings"]
# Please store the array above in a variable.
# Create an array with 4 strings: north, east, south, west.
# puts directions = ["north", "south", "east", "west"]

# 3. Control Flow
# Please loop through only first 3 words (from the array created in Section 2)
# and output them to the screen using a while loop

# i = 0
# favorite_foods = ["french fries", "bacon", "doughnuts", "cheese", "wings"]
# while i < 3
#   puts favorite_foods [i]
#   i +=1
# end

# Now use the each method and output each word with the prefix "cri-". So if
# one of the words was "key" the output for that particular word would be "cri-key"
# favorite_foods = ["french fries", "bacon", "doughnuts", "cheese", "wings"]
# favorite_foods.each do |food|
#   puts "lotsa #{food}"
# end

# Create a range from 2 to 10 and iterate through it, only output even numbers
# range = (2..10).to_a
# range.each do |number|
#   if number%2 == 0
#     puts number
#   end
# end
# Create a range from 1 to 25 and iterate through it, output "Fizz" if the number
# is divisible by 3, "Buzz" if the number is divisible by 5, "FizzBuzz" if
# divisible by both 3 and 5 or just the number other wise.
# 101.times do |i|
#   if i > 0 && ((i % 3)==0) && ((i % 5)==0)
#     puts "FizzBuzz"
#   elsif i > 0 && (i % 3)==0
#     puts "Fizz"
#   elsif i > 0 && (i % 5)==0
#     puts "Buzz"
#   elsif
#     i > 0
#     puts i
#   end
# end

# 4. Ruby Programs
# Easy: Create a profit calculator program that asks for an initial investment,
# an annual rate of return and number of years to calculate. Use this formula:
# Principal x (1+(Rate of return/100)) ^ Number of years.
puts "Welcome to the profit calculator"
puts "I need some information from you to calculate your profit"
puts "What is your initial investment?"
investment = gets.chomp.to_f
puts "What is your annual rate of return?"
rate = gets.chomp.to_f
puts "How many years will you invest?"
years = gets.chomp.to_f
profit = investment * (1 + (rate/100)) * years
puts "Your profit is $#{profit}"

# Medium: Create Rock Paper Scissors that doesn't stop until the user
# presses CTRL+C
# Really Hard: Create a program that creates a random 3 letter string and
# asks the user to guess what letters are in the string is over 5 tries, after
# that tell them they lost if they havent figured it out.
