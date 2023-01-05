require './trimmer_decorator.rb'

describe TrimmerDecorator do
  describe '#correct_name' do
    it 'Trims white spaces from given string' do
      input = TrimmerDecorator.new('  tryouts for this')
      result = input.correct_name
      expect(result).to be('  tryouts')
    end
  end
end
