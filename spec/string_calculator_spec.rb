require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe 'should test add method' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number for a single number' do
        expect(StringCalculator.add("5")).to eq(5)
    end
  end
end