# frozen_string_literal: true

def duplicate_count(arr)
  sorted_arr = arr.sort
  count = 0
  prev_digit = false
  sorted_arr.each do |i|
    count += 1 if prev_digit && (i == prev_digit)
    prev_digit = i
  end

  count
end
