# frozen_string_literal: true

def str_contains_chars(arr)
  result = []
  current_char = 0
  (0...arr[0].size).each do |i|
    (current_char...arr[1].size).each do |j|
      next unless arr[0][i] == arr[1][j]

      result.push(arr[0][i])
      current_char = j + 1
      break
    end
  end
  test_result(result, arr[1])
end

def test_result(result, arr1)
  return false if result.size != arr1.size

  true
end
