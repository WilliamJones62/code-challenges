# frozen_string_literal: true

# This class contains unique paths logic
class UniquePaths
    def unique_paths(int1, int2)
        @max_row = int1
        @max_col = int2
        @unique_paths = 0
        next_step(1, 1)
        @unique_paths
    end

    def next_step(row, col)
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