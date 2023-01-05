require './capitalize_decorator.rb'

describe CapitalizeDecorator do
  describe '#correct_name' do
    it 'Capitalize the stribg passed in it' do
      decorate = CapitalizeDecorator.new('salty')
      capital_string = decorate.correct_name
      expect(capital_string).to be('SALTY')
    end
  end
end
