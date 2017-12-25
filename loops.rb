
# prompt:
# return all names that do not start with a vowel
# answer: steve, gabriel, zeshan

first_row = ["steve", "orly", "gabriel", "zeshan"]
i = 0
vowels = ["a", "e", "i", "o", "u", "y"]

while i < first_row.length  #first row length is 4
  first_letter = first_row[i][0]  #returns first letter of each name
  unless vowels.include? first_letter #compares first letter to vowel array
    puts first_row[i] #returns name if there is not a match
  end
  i += 1 #increases i value by 1
end


# i = 0
# until i>= 11
#   puts i
#   i += 1
# end

=begin
# for loop starts at beginning of array and goes all the way to the end
alive_people = [
  "Kelly", "Joe", "Megan"
]

for name in alive_people  #name is temporary variable
  puts "Send questionnaire to #{name}"
end
=end
