# Create your own error class named MyError. Make it a subclass of
# StandardError and show some code that uses it.

class ZeroError < StandardError
end

  def multiplier(number1, number2)
    if number1 == 0 || number2 == 0
      raise ZeroError
    end
     number1 * number2
  end

  begin
    puts multiplier(5,0)
  rescue ZeroError
    puts "You cannot multiply by zero"
  end
