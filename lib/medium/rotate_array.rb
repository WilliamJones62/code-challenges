
# This class contains rotate array logic
class RotateArray
    def rotate_array(arr, int)
        # nothing to do?
        return arr if int == 0

        arr_length = arr.length
        # if int > arr_length convert it to the smallest number <= arr_length
        int = int % arr_length if int > arr_length

        # nothing to do?
        return arr if int == 0

        trailing = arr.pop(int)
        arr.unshift(trailing)
        arr.flatten
            
    end
end
