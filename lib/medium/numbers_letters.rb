
# This class contains numbers letters logic
class NumbersLetters
    def numbers_letters(str)
        str_arr = str.chars
        numbers = ('0'..'9').to_a
        lowercase = ('a'..'z').to_a
        uppercase = ('A'..'Z').to_a
        work_arr = []
        str_arr_index = 0
        alpha_str = false
        first_num = false
        str_arr.each do |i|
            case i
            when 'a'..'z'
                i = uppercase[lowercase.index(i)]
                alpha_str = true
            when 'A'..'Z'
                i = lowercase[uppercase.index(i)]
                alpha_str = true
            when '0'..'9'
                if !first_num
                    first_num = str_arr_index
                else
                    if alpha_str
                        num_swap = work_arr[first_num]
                        work_arr[first_num] = i
                        i = num_swap
                        alpha_str = false
                    end
                    first_num = str_arr_index
                end
            else
                first_num = false
                alpha_str = false
            end
            work_arr.push(i)
            str_arr_index += 1
        end
        work_arr.join
    end
end