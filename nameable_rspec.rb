require './nameable.rb'

describe Nameable do
  describe '#correct_name' do
    it 'Returns Not Implemented Error' do
      name = Nameable.correct_name
      expect(name).to be_a(String)
    end
  end
end
