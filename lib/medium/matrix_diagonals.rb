# frozen_string_literal: true

# This class contains matrix diagonals logic
class MatrixDiagonals
    def matrix_diagonals(array)
        @array = array
        left_triangle
        right_triangle
        @array
    end

    def left_triangle
        column_adjust = 0
        array_length = @array.length
        (array_length - 1).times do 
            sort_array = []
            (column_adjust...array_length - column_adjust).each do |i|
                sort_array.push(@array[i][i - column_adjust])
            end
            sorted_array = sort_array.sort { |a, b| b <=> a }
            # now put the digits back
            j = 0
            (column_adjust...array_length - column_adjust).each do |i|
                @array[i][i - column_adjust] = sorted_array[j]
                j += 1
            end

            column_adjust += 1
        end
    end

    def right_triangle
        column_adjust = 1
        array_length = @array.length
        (array_length - 2).times do 
            sort_array = []
            (0...array_length - 1).each do |i|
                sort_array.push(@array[i][i + column_adjust])
            end
            sorted_array = sort_array.sort
            # now put the digits back
            j = 0
            (0...array_length - 1).each do |i|
                @array[i][i + column_adjust] = sorted_array[j]
                j += 1
            end

            column_adjust += 1
        end
    end
end
  