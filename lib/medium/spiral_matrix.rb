# frozen_string_literal: true

# This class contains spiral matrix logic
class SpiralMatrix
    def spiral_matrix(matrix)
        result = []
        top = 0
        bottom = matrix.length - 1
        left = 0
        right = matrix[0].length - 1
        
        while top <= bottom && left <= right
          # Traverse right across the top row
          (left..right).each do |col|
            result << matrix[top][col]
          end
          top += 1
          # Traverse down the right column
          (top..bottom).each do |row|
            result << matrix[row][right]
          end
          right -= 1
          # Traverse left across the bottom row (if there's a row left)
          if top <= bottom
            right.downto(left).each do |col|
              result << matrix[bottom][col]
            end
            bottom -= 1
          end
          # Traverse up the left column (if there's a column left)
          if left <= right
            bottom.downto(top).each do |row|
              result << matrix[row][left]
            end
            left += 1
          end
        end
        result
    end
end
