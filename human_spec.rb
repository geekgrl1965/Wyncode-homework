require './human.rb'

describe Human do
  #Given: A Human
  #When: it hasn't had breakfast
  #Then: it is hungry
    #and it is sleepy
  context 'before breakfast' do
    it 'is hungry' do
      human = Human.new
      expect(human.stomach).to eq([])
    end
    it 'is sleepy' do
      human = Human.new
      expect(human.state).to eq(:sleepy)
    end
  end

  context 'after breakfast' do
    it 'is not hungry' do
      human = Human.new
      human.eat_breakfast
      expect(human.stomach).to_not eq([])
  end
    it 'is awake' do
      gabe = Human.new
      gabe.eat_breakfast
      expect(gabe.state).to eq(:awake)
    end

  end
end
