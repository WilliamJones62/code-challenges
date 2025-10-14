# frozen_string_literal: true

# This class contains merge intervals logic
class MergeIntervals
    def merge_intervals(arr)
        sorted_arr = arr.sort_by { |inner_arr| inner_arr[0] }
        first_arr = sorted_arr[0]
        result = []
        idx = 1
        while idx < sorted_arr.length do
            if first_arr[1] >= sorted_arr[idx][0]
                merge_arr = []
                merge_arr[0] = first_arr[0]
                merge_arr[1] = sorted_arr[idx][1]
                result << merge_arr
            else
                result << first_arr
            end
            idx += 1
            first_arr = sorted_arr[idx]
        end
        result
    end
end
