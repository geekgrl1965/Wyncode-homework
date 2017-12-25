
#Write a method that takes in the pets array as a parameter.
#Inside that method, iterate over the array using the each method.
#If the name starts with an “S”, output the message “My name starts with an S for super!”
#If the name does not begin with an “S” output the message: “I’m still pretty special too!”.

# pets = ["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason","Baron", "Brinkley", "Bella"]

def special_pets (pets)
pets.each do |animal|
  if
    animal.chars.first.include? "S"
    puts "I'm #{animal}. My name starts with an S for super!"
  else
    puts "I'm #{animal}. I'm still pretty special too!"
  end
end
end

special_pets(["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason","Baron", "Brinkley", "Bella"])


# def special_pets (pets)
# pets = ["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason","Baron", "Brinkley", "Bella"]
# pets.each do |animal|
#   if
#     animal.include? "S"
#     puts "I'm #{animal}. My name starts with an S for super!"
#   else
#     puts "I'm #{animal}. I'm still pretty special too!"
#   end
# end
# end

#special_pets(["Scooby", "Soco", "Summer", "Pixie", "Wilson", "Mason","Baron", "Brinkley", "Bella"])
# special_pets(pets)
# special_pets([pets])
