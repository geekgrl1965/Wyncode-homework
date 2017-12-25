class Table
  @@next_table_id = 1
  attr_reader :id

  def initialize           #applied to every instance of the class
    @id = @@next_table_id  #instance variable using class variable
    @@next_table_id +=1
  end

  def change_next_id(next_id)
    @@next_table_id = next_id
  end

  def self.next_table_id
    @@next_table_id      #makes variable accessible (to class only)
  end

  def self.has_legs?
      true              #declares that all new tables will have legs
  end

  def preview_next_id  #instance method
    @@next_table_id    #class variable
  end
end

#self creates a class method. Affects the class, rather than an
#instance of the class

puts Table.has_legs?
#capital T indicates object is a class, not an instance
#therefore, we are calling a class method

p Table.next_table_id

# p t.next_table_id  #raises an "undefined method" error because we are
                     #calling a class method on an instance

t = Table.new
p t.id   #returns id of 1

t2 = Table.new
p t2.id  #returns id of 2, because of @@next_table_id +=1

puts "The next id back at the factory is #{t2.preview_next_id}"

puts t2.change_next_id 99
puts "We changed the @@next_table_id and it is now #{t2.preview_next_id}"
#output: We changed the @@next_table_id and it is now 99
