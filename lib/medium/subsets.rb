# frozen_string_literal: true

# This class contains sort colors logic
class Subsets
    def subsets(arr)
        @arr = arr.dup
        @result = [[]]
        @total_len = arr.length
        (0...@total_len).each { |j| load_results(j, [@arr[j]]) }
        @result
    end

    def load_results(start_pos, arr)
        @result << arr
        next_pos = start_pos + 1
        (next_pos...@total_len).each do |i|
            next_arr = arr.dup
            next_arr << @arr[i]
            load_results(i, next_arr)
        end
    end
end