def weather (good)
	if good == "sunny"
		puts "It's a beautiful day out!"
	else
	    puts "Grab an umbrella!"
    end
end

weather("rainy") 

def car_color (color)
	if color == "green" || "black"
		puts "That's a popular color"
	else puts "I'm sure your car is nice too"
	end	
end

car_color("black")	

def car_speed (speed)
	if speed >= 40 && speed <=60
		puts "Good driver!"
	else
	    puts "Bad driver!"
	end
end 

car_speed(50)	



def comfy_shoes(day_of_week)
  if ["Monday", "Wednesday", "Friday"].include?(day_of_week)
    puts "Don't you love comfy shoe day?"
  else 
    puts "Try to stay off your feet"
  end   
end

comfy_shoes("Friday") 


def new_guy(name)
	if name != "Angel"
		puts "Hi! How can I help you?"
	else
	    puts "Hi #{name}! Excited to work with you!"
	end
end

new_guy("Angela")	


def grumpy_cat(fed, has_toy)
  if fed == "true" && has_toy == "true"
    puts "That's a happy cat!"
  else
    puts "The cat is grumpy"
  end
end  

grumpy_cat("true", "false")


def grumpy_human(day, coffee)
	if day == "Monday" && coffee != "true"
		puts "Stay away everyone!"
	else
	    puts "Good morning everyone!"
	end
end

grumpy_human("Monday", "false")














         	




















