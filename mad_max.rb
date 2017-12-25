#Define a method named max that takes two numbers as arguments and returns the largest of them.

# Don’t worry about being defensive with this one.
# Assume the arguments are numeric. But still, make sure you write tests!
# Submit both your method and the test(s) for that method.

# def max (num1, num2)
#   if num1 > num2
#     return num1
#   else
#     return num2
#   end
# end
#
# max(5,12)
#
# p max(5,12)==12


# Refactor your max method to find the max of any number of arguments.
# Again, show us your tests!
def max (*numbers)
  p numbers.max
end

p max(10,2,15,99,1003,7,100)==1003
