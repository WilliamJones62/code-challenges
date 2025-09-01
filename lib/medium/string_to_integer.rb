
# This class contains string to integer logic
class StringToInteger
    NUMERIC_CHARS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    SIGN_CHARS = ['+', '-']
    def string_to_integer(str)
        arr = str.lstrip.chars
        return 0 if !NUMERIC_CHARS.include?(arr[0]) && !SIGN_CHARS.include?(arr[0])
        negative_number = true if arr[0] == '-'
        arr.shift if SIGN_CHARS.include?(arr[0])
        num_arr = []
        no_more_digits = false
        until no_more_digits || arr.length == 0
            if !NUMERIC_CHARS.include?(arr[0])
                no_more_digits = true
            else
                if arr[0] == '0' && num_arr.length == 0
                    arr.shift
                else
                    num_arr.push(arr.shift)
                end
            end
        end
        return 0 if num_arr.length == 0
        return_int = num_arr.join.to_i
        return_int = return_int * -1 if negative_number
        return 2147483647 if return_int > 2147483647
        return -2147483648 if return_int < -2147483648
        return_int
    end
end
