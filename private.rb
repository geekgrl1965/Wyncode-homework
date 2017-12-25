class Table
  def a_public_method
    a_private_method
  end

  private  #every method defined past this point is unaccessible
           #using an instance

  def a_private_method
  end
end

t = Table.new
t.a_public_method
# t.a_private_method  #raises error, because it's not available to an instance

t.send :a_private_method  #forces instance to call a method


  class Parent
    private
    def whisper_secret
      puts "parent's secret"
    end
  end
  class Child < Parent
    def expose_secret
      whisper_secret
    end
  end

  c = Child.new
  c.expose_secret  #output: parent's secret
  c.whisper_secret #raises error, because it can't be called directly
  c.send :whisper_secret  #output: parent's secret
