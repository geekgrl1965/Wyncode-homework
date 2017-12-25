menu = {
    sections: [
      {
        name: "Tacos",
        items:[
          {
            "name": "Al Pastor",
            "description": "pork, achiote, pineapple",
            "price": 3.50
          },
          {
            "name": "Chorizo",
            "description": "pork, paprika, cumin, garlic",
            "price": 3.50
          },
          {
            "name": "Barbacoa",
            "description": "beef, cumin, pasilla negra",
            "price": 3.50
          },
          {
            "name": "Pollo",
            "description": "chicken, scallion, cilantro",
            "price": 3.50
          },
          {
            "name": "Huitlacoche",
            "description": "corn truffle, corn, scallion",
            "price": 3.50
          },
          {
            "name": "Carnitas",
            "description": "pork, orange, cinnamon",
            "price": 3.50
          },
          {
            "name": "Asada",
            "description": "steak, citrus, chile de arbol",
            "price": 5.00
          },
          {
            "name": "Lengua",
            "description": "beef tongue, cerveza victoria",
            "price": 3.50
          },
          {
            "name": "Camaron",
            "description": "shrimp, red mole,slaw",
            "price": 5.00
          },
          {
            "name": "Rajas",
            "description": "poblano, onion, crema, cotija",
            "price": 3.50
          },
          {
            "name": "Chapulines",
            "description": "grasshoppers, avocado,tajin",
            "price": 3.50
          },
        ]
      },

      {
        name: "Sides/Antojitos",
        items:[
          {
            "name": "Totopos",
            "description": "hand torn blue masa chips",
            "price": 5.00
          },
          {
            "name": "Totopos with guac",
            "description": "hand torn blue masa chips, guac",
            "price": 7.00
          },
          {
            "name": "Totopos with frijoles",
            "description": "hand torn blue masa chips, frijoles",
            "price": 7.00
          },
          {
            "name": "Totopos with salsa",
            "description": "hand torn blue masa chips, salsa",
            "price": 6.50
          },
          {
            "name": "Elote",
            "description": "charred corn, cilantro-jalapeno crema, cotija",
            "price": 5.00
          },
          {
            "name": "Quinoa",
            "description": "jicama, corn, scallion, chile, nopal dressing",
            "price": 6.50
          }
        ]
      },

      {
        name: "Beer",
        items:[
          {
            "name": "Corona Extra",
            "description": "imported beer",
            "price": 7.00
          },
          {
            "name": "Pacifico",
            "description": "imported beer",
            "price": 6.00
          },
          {
            "name": "Corona Light",
            "description": "imported beer",
            "price": 6.00
          },
          {
            "name": "Tecate",
            "description": "imported beer",
            "price": 5.00
          },
          {
            "name": "Negra Modelo",
            "description": "imported beer",
            "price": 6.00
          },
          {
            "name": "Victoria",
            "description": "imported beer",
            "price": 6.00
          },
          {
            "name": "Rotating Craft Selection",
            "description": "craft beer",
            "price": 8.00
          }
        ]
      },

      {
        name: "Breakfast",
        items:[
          {
            "name": "Huevos a la Mexicana",
            "description": "scrambled eggs, pico, frijoles, crema, tortillas",
            "price": 5.00
          },
          {
            "name": "Quesadillas de Epazote",
            "description": "queso chihuahua, cotija, epazote, pico, frijoles",
            "price": 5.00
          },
          {
            "name": "Tostada de Aguacate",
            "description": "avocado, egg, frijoles, cabbage, cotija",
            "price": 6.00
          },
          {
            "name": "Chilaquiles",
            "description": "crispy masa, pollo, salsa roja, eggs, crema",
            "price": 6.00
          },
          {
            "name": "Tostada de Aguacate",
            "description": "avocado, queso chihuahua, eggs, crema",
            "price": 6.00
          }
        ]
      },

      {
        name: "Coffee & Tea",
        items:[
          {
            "name": "Espresso shot",
            "description": "shot",
            "price": 3.00
          },
          {
            "name": "Espresso cortado",
            "description": "cortado",
            "price": 4.00
          },
          {
            "name": "Espresso latte",
            "description": "latte",
            "price": 5.00
          },
          {
            "name": "La Endulzada",
            "description": "espresso, condensed milk, ice, shaken",
            "price": 5.00
          },
          {
            "name": "Green tea",
            "description": "Jasmine Cloud by JoJo Tea",
            "price": 3.00
          },
          {
            "name": "Orange Juice",
            "description": "Fresh Squeezed Florida OJ",
            "price": 5.00
          },
        ]
      },

    ]
  }

puts <<END
 "What would you like to do?"
1. Show Menu
2. Place an Order
3. Done Ordering
4. Get the Check
END
choice = gets.chomp.to_i

until [1,2].include? choice
  puts "You must place an order first"
  choice = gets.chomp.to_i
end

if choice == 1
  puts "Okay, here is the menu:"
    menu[:sections].each do |section|
      puts section[:name]
        puts "========================"
        puts "\n"
        section[:items].each do |name|
        puts name[:name]
        print name[:description]
        puts " #{name [:price]}"
    end
    puts "\n"
    puts " "
  end
elsif choice == 2
puts "What would you like to order?"
end

puts "What would you like to order?"
order = []
order << gets.chomp
puts "Would you like to order anything else?"
response = gets.chomp
  until response == "no"
    puts "What else would you like to order?"
    if response =!"no"
     order << gets.chomp
    end
  end

















  # puts "How much is the bill?"
  # bill = gets.chomp.to_f
  # # puts "The bill is $#{bill}"
  # total = sprintf('%.2f',(bill *1.20))
  # puts "The total is $#{total}"
# puts menu[:sections][0][:name]
# puts menu[:sections][1][:name]
# puts menu[:sections][0][:items][0][:name]
# puts menu[:sections][0][:items][0][:description]
# puts menu[:sections][0][:items][0][:price]
