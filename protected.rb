class Parent
  protected    #allows any related object (inheritor) to call method
  def whisper_family_secret
    puts "shhh!"
  end
end

class Child < Parent
  def chat(other)
    other.whisper_family_secret
  end
end

class Stranger
  def chat(other)
    other.whisper_family_secret
  end
end

jo = Child.new
juha = Child.new

jo.chat(juha)
juha.chat(jo)

skeev = Stranger.new
skeev.chat (jo)   #unrelated object can't access protected method:
                  #protected.rb:16:in `chat': protected method
                  #{}`whisper_family_secret' called for
                  #<Child:0x007fdf9f891c38> (NoMethodError)
	                #from protected.rb:27:in `<main>'
