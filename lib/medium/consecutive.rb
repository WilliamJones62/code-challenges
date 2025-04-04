# frozen_string_literal: true

# This class contains consecutive logic
class Consecutive
  def consecutive(arr)
    sort_arr = arr.sort
    prev_int = false
    int_count = 0
    sort_arr.each do |int|
      int_count += (int - (prev_int + 1)) if prev_int
      prev_int = int
    end
    int_count
  end
end
