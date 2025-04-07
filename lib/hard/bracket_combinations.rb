# frozen_string_literal: true

# This class contains breacket combinations logic
class BracketCombinations
  def bracket_combinations(integer)
    factorial(2 * integer) / (factorial(integer + 1) * factorial(integer))
  end

  def factorial(integer)
    factorial = counter = 1
    while counter <= integer
      factorial *= counter
      counter += 1
    end
    factorial
  end
end
