# frozen_string_literal: true

# This class contains add 2 numbers game logic
class Add2Numbers
    def add_2_numbers(arr1, arr2)
        (arr1.reverse.join.to_i + arr2.reverse.join.to_i).to_s.chars.map(&:to_i).reverse
    end
end
