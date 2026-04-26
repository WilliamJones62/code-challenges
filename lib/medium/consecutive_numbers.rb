
# This class contains 3 consecutice numbers logic
class ConsecutiveNumbers
    def consecutive_numbers(arr)
        arr_length = arr.length
        # need a minimum of 3 numbers
        return [] if arr_length < 3
        number_arr = []
        current_num = nil
        results = []

        arr.each do |i|
            number_arr << i[1] 
            if i[1] == current_num
                if number_arr.length == 3
                    results << i[1]
                    number_arr = []
                    current_num = nil
                end
            else
                current_num = i[1]
            end

        end

        results
            
    end
end
