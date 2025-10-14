# frozen_string_literal: true

# This class contains spiral matrix 2 logic
class SpiralMatrix2
    def spiral_matrix2(int)
        result = []
        (0...int).each do |i|
            r = []
            (0...int).each { |j| r << 1 }
            result << r
        end
        top = 0
        bottom = int - 1
        left = 0
        right = int - 1
        i = 1
        
        while top <= bottom && left <= right
          # Traverse right across the top row
          (left..right).each do |col|
            result[top][col] = i
            i += 1
          end
          top += 1
          # Traverse down the right column
          (top..bottom).each do |row|
            result[row][right] = i
            i += 1
          end
          right -= 1
          # Traverse left across the bottom row (if there's a row left)
          if top <= bottom
            right.downto(left).each do |col|
              result[bottom][col] = i
              i += 1
            end
            bottom -= 1
          end
          # Traverse up the left column (if there's a column left)
          if left <= right
            bottom.downto(top).each do |row|
              result[row][left] = i
              i += 1
            end
            left += 1
          end
        end
        result
    end
end
