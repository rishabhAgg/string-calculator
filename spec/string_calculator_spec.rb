require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe 'should test add method' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number for a single number' do
        expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns the sum of two or more comma separated numbers' do
        expect(StringCalculator.add("1,2")).to eq(3)
        expect(StringCalculator.add("1,2,3")).to eq(6)
    end

    it 'should handle unwanted comma placements' do
        expect(StringCalculator.add("1,,2")).to eq(3)
        expect(StringCalculator.add("1,2,")).to eq(3)
        expect(StringCalculator.add(",1,2")).to eq(3)
        expect(StringCalculator.add(",,1")).to eq(1)
        expect(StringCalculator.add(",,")).to eq(0)
    end

    it 'should handle spaces around numbers' do
        expect(StringCalculator.add("1, 2")).to eq(3)
        expect(StringCalculator.add("1,2 ")).to eq(3)
        expect(StringCalculator.add(" 1,2")).to eq(3)
        expect(StringCalculator.add(" 1 , 2 ")).to eq(3)
    end

    it 'should handle new line characters' do
        expect(StringCalculator.add("1\n2")).to eq(3)
        expect(StringCalculator.add("1,2\n3")).to eq(6)
        expect(StringCalculator.add("1\n2,3")).to eq(6)
        expect(StringCalculator.add("1\n2\n3")).to eq(6)
    end
  end
end