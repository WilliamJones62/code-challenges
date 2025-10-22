# frozen_string_literal: true

# This class contains set matrix zeros logic
class SetMatrixZeros
    def set_matrix_zeros(arr)
        rows = arr.length
        cols = arr[0].length
        (0...rows).each do |i|
            (0...cols).each do |j|
                if arr[i][j] == 0
                    # set row to 'a' unless it is 0
                    (0...cols).each { |k| arr[i][k] = 'a' if arr[i][k] != 0 }
                    # set col to 'a' unless it is 0
                    (0...rows).each { |k| arr[k][j] = 'a' if arr[k][j] != 0 }
                end
            end
        end
        (0...rows).each do |i|
            (0...cols).each do |j|
                arr[i][j] = 0 if arr[i][j] == 'a'
            end
        end
        arr
    end
end