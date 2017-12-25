#Create a hash
h=Hash.new
h={}

#Create a Hash with a key/value pair
quiz_scores={q1: 92, q2: 87}

#Create a hash with many pairs
national_champs = {2014 => "Ohio State", 2013=>"Florida State",2012=>"Alabama",2011=>"Alabama",2010=>"Auburn", 2009=>"Alabama",2008=>"Florida",2007=>"LSU",2006=>"Florida",2005=>"Texas"}

#get all of the keys and values
national_champs.keys
national_champs.values

#Get a specific values
sweden_capital = country_capitals[:Sweden]

#Check if a key exists
country_capitals = { Denmark: "Copenhagen", Sweden: "Stockholm", Germany: "Berlin", France: "Paris", Spain: "Madrid"}
country_capitals.include? "Italy"  #false
country_capitals.include? "France" #true
country_capitals.include? :France  #false
country_capitals.include? :france  #false

#What new Hash method did you discover? Answer: .value

#Set the default value of a hash
authors = {"Little Women" => "Louisa May Alcott", "Robinson Crusoe" => "Daniel Defoe"}
authors.default = "unknown"
#Returns unknown
#That we are over thinking the questions!

#Set a new value for an existing key
bestsellers = {"Come Rain or Come Shine" => "unknown", "Make Me" => "unknown", "The Girl in the Spider's Web" => "unknown", "Go Set a Watchman" => "unknown", "All the Light We Cannot See" => "unknown"}
bestsellers["Come Rain or Come Shine"] = "Jan Karon"
bestsellers["Make Me"] = "Lee Child"
bestsellers["The Girl in the Spider's Web"] = "David Lagercrantz"
bestsellers["Go Set a Watchman"] = "Harper Lee"
bestsellers["All the Light We Cannot See"] = "Anthony Doerr"

#Check if a Hash contains a value
authors = {"Little Women" => "Louisa May Alcott", "Robinson Crusoe" => "Daniel Defoe"}
authors.value? "Louisa May Alcott" #true

#Learn how the Hash.include? method works
remodel = {floor: "tile", cabinets: "oak", countertop: "corian", faucet: "stainless steel", refrigerator: "LG"}
remodel.include? "oak" #false
remodel.include? :cabinets #true
#The include methods only works on keys
