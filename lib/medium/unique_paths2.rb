# frozen_string_literal: true

# This class contains unique paths2 logic
class UniquePaths2
    def unique_paths2(arr)
        @arr = arr
        @max_row = @arr.length - 1
        @max_col = @arr[0].length - 1
        @unique_paths = 0
        next_step(0, 0)
        @unique_paths
    end

    def next_step(row, col)
        # don't continue if the current path is blocked
        return if @arr[row][col] == 1
        # if the end of the path reached update the min_path_sum
        if row == @max_row && col == @max_col
            @unique_paths += 1
            return
        end

        # set up the next recursion
        if row < @max_row
            next_row = row + 1
            next_step(next_row, col)
        end

        if col < @max_col
            next_col = col + 1
            next_step(row, next_col)
        end
    end
end
