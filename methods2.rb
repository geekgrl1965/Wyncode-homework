# def say_hello(argument)
#   puts "Hello #{argument}"  #string interpolation
# end
#
# say_hello_method = method(:say_hello)  #assign method to a variable
# 5.times &say_hello_method
#
# #easier way to do the same thing:
# 5.times do |item|
#   puts "Hello #{item}"
# end
#
# #for one line of code:
# 5.times {puts "Hello"}

# 5.times do |cats|
#   puts "Hello #{cats}"  #prints number of each iteration 0-4
# end
#
# [1,2,3,4,5].each {|number|
#   puts "counted to #{number}..."
# }
#
# (1..5).each {|num|
#   if num.even?
#     puts "Even"
#   else
#     puts "Odd"
#   end
# }

#this:
# for num in (1..5)
#   puts num
# end
# #is the same as this:
# (1..5).each {|num|
#   puts num
# }

# result = (1..5).map do |num|  #sends output to an array
#   if num.even?
#     "Even"
#   else
#     "Odd"
#   end
# end
# p result
#
# #ternary
# puts (1..5).map do |num|
# num.even? ? "Even" : "Odd"
# end
# p result

#select returns what evaluates to truthy
# puts (1..5).select { |num|  #will return even numbers
# num.even?
# }
# puts (1..5).reject { |num|  #will exclude even numbers
# num.even?
# }

# puts [1,2,3].any? {|n| n.even? }    #true
# puts [1,2,3].all? {|n| n.even? }    #false
# puts [1,2,3,4].one? {|n| n.even? }  #false
# puts [1,2,3].none? {|n| n.zero? }   #true

#yield - method accepts block parameter. One per method
# def puts_block
# puts yield
# end
# puts_block { "Hello world!" }

#adds the numbers in the range
# p (1..10).to_a.reduce(:+)

# def puts_block
# if block_given?
# puts yield
# else
# puts "No block given."
# end
# end
# puts_block { "Hello world!" }
# puts_block

# def puts_hello_wyncode
# if block_given?
# puts yield "Wyncode"
# else
# puts "No block given."
# end
# end
# puts_hello_wyncode { |name| "Hello #{name}" }

#with multiple arguments:
# def puts_hello_wyncode
# if block_given?
# puts yield "Hello", "Wyncode"
# else
# puts "No block given."
# end
# end
# puts_hello_wyncode { |greeting, name| "#{greeting}
# #{name}!" }

#module = named group of related methods
# module AlphabetTesters
#   def self.a?(letter)
#       letter.downcase == "a"
#   end
#   def self.b?(letter)
#       letter.downcase == "b"
#   end
# end

#to call module:
# require "./alphabet_testers.rb"
# # puts AlphabetTesters.a?("s")
#
# ("a".."e").each do |kittycat|
#   puts AlphabetTesters.a?(kittycat)
# end

#default values if no argument given
# def add_two(number=0)
#   return number + 2
# end
# puts add_two ()  #default value will be used

# alphabet = ("a".."z").to_a.join(':')
# p [].push(*alphabet)
