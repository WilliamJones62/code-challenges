# frozen_string_literal: true

# This class contains matrix search logic
class MatrixSearch
    def matrix_search(arr, int)
        rows = arr.length
        cols = arr[0].length

        return false if arr[0][0] > int || arr[rows - 1][cols - 1] < int

        arr.flatten.include?(int)
    end
end