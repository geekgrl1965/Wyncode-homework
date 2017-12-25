# Create a Ruby program to replicate some of the features of the curl command.
# I should be able to run it from the Command Line like this:
#
# ruby curl.rb GET http://www.google.com
# The output should be the response headers followed by the response body,
# similar to curl -iX GET.
#
# Hint: When you pass arguments to Ruby through the Command Line, they get set
# into a Constant Array variable named ARGV.

#ARGV = ["GET","http://www.google.com" ] What is passed to the program
#from the command line

require "httparty"

if ARGV[0] == "GET"
  response = HTTParty.get(ARGV[1])
  puts response.body
  puts response.headers
end
