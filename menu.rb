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
            "name": "Elote",
            "description": "charred cordn, cilantro-jalapeno crema, cotija",
            "price": 5.00
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
          }
        ]
      },

      {
        name: "Coffee & Tea",
        items:[
          {
            "name": "Espresso",
            "description": "shot",
            "price": 3.00
          },
          {
            "name": "Green tea",
            "description": "Jasmine Cloud by JoJo Tea",
            "price": 3.00
          }
        ]
      },

    ]
  }


puts menu[:sections][0][:name]
puts menu[:sections][1][:name]
puts menu[:sections][0][:items][0][:name]
puts menu[:sections][0][:items][0][:description]
puts menu[:sections][0][:items][0][:price]
