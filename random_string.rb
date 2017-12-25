# Really Hard: Create a program that creates a random 3 letter string and
# asks the user to guess what letters are in the string is over 5 tries, after
# that tell them they lost if they havent figured it out.

letters = ("a".."z").to_a
string = []



string << letters.sample
