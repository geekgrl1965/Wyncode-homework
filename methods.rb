def add_two (number)                   #(number) defines argument
  (number + 2) unless number.nil?      #injects variable into block - what method does
end

puts add_two (2)                       #calls method and supplies argument

puts number  #will return a name error because it doesn't exist outside of the method


def flip_words (first_word, second_word)
  puts second_word + first_word
end

flip_words("world", "hello")

def exists?(needle, haystack)
  for item in haystack
    puts "Checking for #{item} equal to #{needle}"
    return true if item == needle   #explicit return - stops loop
  end
end

puts exists? ("a"), ["c", "b", "a", "d"]

def shm (word)
  return word if word.start_with? "shm"  #explicit return
  "shm" + word                           #implicit return
end

puts shm("oney").upcase


def say_ball (ball)
  puts ball.color     #what user sees
end

def say_ball(ball)
  return ball.color   #what computer sees
end

#adds two to the number
# def add_two-test (number)
#   if number.respond_to? :+  #validation - checks if input meets requirements. in this case, if it can be added , it's a number
#
#     number + 2
#   end
# end
#
# add_two (1.25)

#block argument
5.times do       #preferred method
  puts "hello"
end

5.times { puts "Hello"}

5.times {
  puts "Hello"
  puts "World"
}
