# frozen_string_literal: true

# This class contains three five multiples logic
class ThreeFiveMultiples
  DIVISORS = [3, 5].freeze
  def three_five_multiples(integer)
    total = 0
    integer_minus1 = integer - 1

    DIVISORS.each do |d|
      total = calculate_total(total, integer_minus1, d)
    end
    total
  end

  def calculate_total(total, integer_minus1, divisor)
    product = divisor
    i = 1
    until product > integer_minus1
      total += product
      i += 1
      product = i * divisor
    end
    total
  end
end
