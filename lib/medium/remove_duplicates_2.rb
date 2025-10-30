# frozen_string_literal: true

# This class contains remove duplicates 2 logic
class RemoveDuplicates2
    def remove_duplicates_2(arr)
        array = arr.dup
        arr_length = arr.length
        current_int = nil
        current_ctr = 0
        current_pos = 0
        until current_pos == arr_length - 1 || array[current_pos] == '-' do
            if array[current_pos] != current_int
                current_int = array[current_pos]
                current_ctr = 1
            else
                current_ctr += 1
                if current_ctr > 2
                    (current_pos...arr_length).each { |i| array[i] = array[i+1] }
                    array[arr_length-1] = '-' if array[arr_length-1] != '-'
                    current_pos -= 1
                end
            end
            current_pos += 1
        end
        array[arr_length-1] == '-' ? array.index('-') : arr_length
    end

end