puts "Welcome to the profit calculator"
puts "I need some information from you to calculate your profit"
puts "What is your initial investment?"
investment = gets.chomp.to_f
puts "What is your annual rate of return?"
rate = gets.chomp.to_f
puts "How many years will you invest?"
years = gets.chomp.to_f
profit = investment * (1 + (rate/100)) * years
puts "Your profit is $#{profit}"
