# frozen_string_literal: true

# This class contains step walking logic
class StepWalking
  def step_walking(integer)
    current_int = next_int = 1
    integer.times do
      prev_int = current_int
      current_int = next_int
      next_int = current_int + prev_int
    end
    current_int
  end
end
