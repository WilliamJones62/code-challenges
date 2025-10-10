# frozen_string_literal: true

# This class contains maximum subarray logic
class MaximumSubarray
    def maximum_subarray(arr)
        max_sub = arr.min
        (0...arr.length).each do |i|
            max_sub = arr[i] if arr[i] > max_sub
            curr_sub = 0
            (i...arr.length).each do |j|
                curr_sub += arr[j]
                max_sub = curr_sub if curr_sub > max_sub
            end
        end
        max_sub
    end
end
