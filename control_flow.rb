=begin
dead_people = [
  "Ethel", "Mortimer", "Buford"
]

alive_people = [
  "Kelly", "Joe", "Megan"
]

sick_people = alive_people.slice(0, 2)

name = "Sasha"

if dead_people.include? name then
  puts "Don't send questionnaire to #{name}"
elsif sick_people.include? name
  puts "Don't send questionnaire to #{name} yet"
else
  puts "Send a questionnaire to #{name}"
end
=end

# country = "jp"

# if country == "us"
#   puts "Hello"
# elsif country == "es"
#   puts "Hola"
# elsif country == "fr"
#   puts "Bonjour"
# else
#   puts "Alo"
# end

# country = "jp"
# case country
# when "us"
#     puts "Hello"
# when "es"
#     puts "Hola"
# when "fr"
#     puts "Bonjour"
# else
#     puts "Alo"
# end



if alive_people.include? name
  message = "#{name} is alive!"
else
  message = "Sorry for your loss"
end
puts message
