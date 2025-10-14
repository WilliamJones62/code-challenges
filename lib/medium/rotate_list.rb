# frozen_string_literal: true

# This class contains rotate list  logic
class RotateList
    def rotate_list(arr, int)
        arr_length = arr.length
        result = []
        arr_length.times do
            result << 1
        end
        (0...arr_length).each { |i| result[(i + int) % arr_length] = arr[i] }
        result
    end
end
