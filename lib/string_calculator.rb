class StringCalculator
    def self.add(numbers)
      return 0 if numbers.empty?

      if numbers.include?(",")
        return numbers.split(",").map(&:to_i).sum
      end
      return numbers.to_i
    end
end