# frozen_string_literal: true

# This class contains three five multiples logic
class ThreeFiveMultiples
  DIVISORS = [3, 5].freeze
  def three_five_multiples(integer)
    total = 0
    (2..integer - 1).each do |i|
      DIVISORS.each do |d|
        total += i if (i % d).zero?
      end
    end
    total
  end
end
