require './decorator.rb'
require './capitalize_decorator.rb'

describe CapitalizeDecorator do
  describe '#correct_name' do
    it 'Capitalize the stribg passed in it' do
      nameable = double('nameable')
      allow(nameable).to receive(:correct_name).and_return('peter')
      decorate = CapitalizeDecorator.new(nameable)
      expect(decorate.correct_name).to eq('Peter')
    end
  end
end
