# frozen_string_literal: true

# This class contains sort colors logic
class Combinations
    def combinations(int1, int2)
        # return if int1 == 1 
        return [[1]] if int1 == 1
        @result = []
        @total_len = int1
        @arr_len = int2
        @end_pos = @total_len - (@arr_len - 2)
        (1..@end_pos).each { |j| load_results(j, [j]) }
        @result
    end

    def load_results(start_pos, arr)
        if arr.length == @arr_len
            # this is a completed array
            @result << arr
            return
        end
        next_pos = start_pos + 1
        (next_pos..@total_len).each do |i|
            next_arr = arr.dup
            next_arr << i
            load_results(i, next_arr)
        end
    end
end