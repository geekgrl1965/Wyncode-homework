#basic pyramid
=begin
height = ARGV[0]
output = ""
height.to_i.times do |i|
  output << "*" * i+=1
  output << "\n"

end
puts output
=end

# double pyramid
height = ARGV[0]
output = ""
height.to_i.times do |i|
  output << " " * (height - (i+1))
  output << "*" * ((i+1)*2)
  output << "\n"

end
puts output
