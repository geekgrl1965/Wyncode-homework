# class Table
#   attr_accessor :num_legs
#
#   def initialize (num_legs)
#     raise "Halt!"
#     if num_legs > 0
#       @num_legs = num_legs
#     else
#       raise "Invalid number of legs" #keyword that stops code from running
#     end
#   end
# end
#
# table = Table.new 4
# puts table.num_legs

# KarensMacBook:Exercises Karen$ ruby errors.rb
# errors.rb:8:in `initialize': Invalid number of legs (RuntimeError)
# 	from errors.rb:13:in `new'
# 	from errors.rb:13:in `<main>'

def add_two (number)
  unless number.respond_to? :+
    raise ArgumentError
  end
  number + 2
end

begin
  puts add_two("")
rescue ArgumentError
  puts " Sorry!"         #if an ArgumentError is raised, this message
rescue => e
  puts "What?"           #all other errors, this message
  puts e.backtrace       #gives list of error messages
end

def a
  b
end

def b
  begin
    c
  rescue
    nil
  end
end

def c
  d
end

def d
  raise "Boom!"
end

begin
  a
rescue => e
  puts e.backtrace
end
