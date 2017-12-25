class Person
  def whoami
     "I'm a person"
  end
end

class Parent < Person
  def whoami
    "I'm a parent" #looks for method of same name in ancestor
  end
end

class Child < Parent
  def whoami
    puts "I'm a child"
  end
end

p = Parent.new
puts p.whoami(1)

c= Child.new
c.whoami
