class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        delimiter = ","
        if numbers.start_with?("//")
            delimiter = numbers[2..-1].split("\n").first
            numbers = numbers.split("\n")[1..-1].join("\n")
        end
        numbers = numbers.gsub("\n", delimiter)
        nums = numbers.split(delimiter).map(&:to_i)
        negative_numbers = nums.select { |num| num < 0 }
        if negative_numbers.any?
            raise "Negative numbers not allowed: #{negative_numbers.join(", ")}"
        end

        return nums.sum
    end
end