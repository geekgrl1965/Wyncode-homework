# Add 2 to the number.
def add_two(number)
  if number.respond_to? :+
    if number.respond_to? :push
      if number.respond_to? :downcase
         number.push 2
    else
      number + 2
      end
    end
  end
end

add_two("Skye")

# def test_add_two
#     p add_two(1)
#     p add_two(1.0)
#     p add_two(nil)
#     p add_two({})
#     p add_two([])
#     p add_two(false)
# end
