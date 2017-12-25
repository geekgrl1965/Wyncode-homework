class Human
  attr_accessor :stomach, :state
  def initialize
    @stomach = []
    @state = :sleepy
  end

  def eat_breakfast
    @stomach << "bacon"
    @state = :awake
  end
end
