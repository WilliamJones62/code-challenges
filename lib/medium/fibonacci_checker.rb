# frozen_string_literal: true

# This class contains fibonacci checker logic
class FibonacciChecker
  def fibonacci_checker(int)
    return 'yes' if int.zero?

    current_int = 1
    next_int = 1
    until next_int >= int
      prev_int = current_int
      current_int = next_int
      next_int = current_int + prev_int
    end
    return 'no' if next_int > int

    'yes'
  end
end
