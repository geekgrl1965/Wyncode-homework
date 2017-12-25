puts "Would you like to play rock, paper or scissors?"
puts "For rock, type r, for Paper, type p, for Scissors, type s"
user_choice = gets.chomp

until ["r", "s", "p"].include? user_choice
  puts "You need to enter r, s, or p"
  user_choice = gets.chomp
end

print "You pick #{user_choice}\n"
computer_choice = ["r", "p", "s"].sample
print "Computer picks #{computer_choice}\n"

if computer_choice == user_choice
  puts "It's a tie!"

  elsif user_choice == "r" && computer_choice == "p"
   puts "Computer wins!"
  elsif user_choice == "r" && computer_choice == "s"
   puts "You win!"
  elsif user_choice == "p" && computer_choice == "r"
    puts "You win!"
  elsif user_choice == "p" && computer_choice == "s"
    puts "Computer wins!"
  elsif user_choice == "s" && computer_choice == "r"
    puts "Computer wins!"
  elsif user_choice == "s" && computer_choice == "p"
    puts "You win!"
else
  puts "That's not a valid choice!"

end
