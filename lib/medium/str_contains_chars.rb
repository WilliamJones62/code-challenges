# frozen_string_literal: true

# This class contains string contains chars logic
class StrContainsChars
  def str_contains_chars(arr)
    result = []
    current_char = 0
    (0...arr[0].size).each do |i|
      current_char, result = find_char(current_char, arr, i, result)
    end
    test_result(result, arr[1])
  end

  def find_char(current_char, arr, int, result)
    (current_char...arr[1].size).each do |j|
      next unless arr[0][int] == arr[1][j]

      result.push(arr[0][int])
      current_char = j + 1
      break
    end
    [current_char, result]
  end

  def test_result(result, arr1)
    return false if result.size != arr1.size

    true
  end
end
