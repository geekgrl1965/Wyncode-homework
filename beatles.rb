beatles = [
  {
    name: "John",
    nickname: "The Smart One"
  },
  {
    name: "Ringo",
    nickname: "The Funny One"
  },
  {
    name: "Paul",
    nickname: "The Cute One"
    },
  {
    name: "George",
    nickname: "The Quiet One"
  }
]

i = 0
while i < beatles.length
    name = "#{name}"
  case name
  when "John" then "The Smart One"
  when  "Ringo" then "The Funny One"
  when  "Paul" then "The Cute One"
  when  "George" then "The Quiet One"

  i += 1

end

i = 0
while i < beatles.length
  puts "Hi, I'm #{beatles[i][:name]}.  I'm #{beatles[i][:nickname]}!"
  i += 1
end
end
