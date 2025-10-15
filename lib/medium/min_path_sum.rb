# frozen_string_literal: true

# This class contains min path sum logic
class MinPathSum
    def min_path_sum(arr)
        @arr = arr
        @max_row = @arr.length - 1
        @max_col = @arr[0].length - 1
        @min_path_sum = 100000
        next_step(0, 0, @arr[0][0])
        @min_path_sum 
    end

    def next_step(row, col, len)
        # don't continue if the current path length > min length
        return if len > @min_path_sum
        # if the end of the path reached update the min_path_sum
        if row == @max_row && col == @max_col
            @min_path_sum = len if len < @min_path_sum
            return
        end

        # set up the next recursion
        if row < @max_row
            next_row = row + 1
            next_step(next_row, col, len + @arr[next_row][col])
        end

        if col < @max_col
            next_col = col + 1
            next_step(row, next_col, len + @arr[row][next_col])
        end
    end
end
