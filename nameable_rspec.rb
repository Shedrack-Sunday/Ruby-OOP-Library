require './nameable'

describe Nameable do
  describe '#correct_name' do
    it 'Returns Not Implemented Error' do
      name = Nameable.new
      expect { name.correct_name }.to raise_error(NotImplementedError)
    end
  end
end
