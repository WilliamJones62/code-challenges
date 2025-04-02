# frozen_string_literal: true

# This class contains string contains substring logic
class StrContainsSubstr
  def str_contains_substr(arr)
    arr1_size = arr[1].size
    (0...arr[0].size + 1 - arr1_size).each do |i|
      return true if arr[0][i, arr1_size] == arr[1]
    end
    false
  end
end
