require './decorator.rb'
require './trimmer_decorator.rb'

describe TrimmerDecorator do
  describe '#correct_name' do
    it 'Trims white spaces from given string' do
      nameable = double('nameable')
      allow(nameable).to receive(:correct_name).and_return('Peter Pan')
      input = TrimmerDecorator.new(nameable)
      expect(input.correct_name).to eq('Peter Pan')
    end
  end
end
