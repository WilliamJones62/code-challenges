
# This class contains combination sum logic
class CombinationSum2
    def combination_sum_2(arr, int)
        @result_arr = []
        @target = int
        find_valid_combinations('', int, arr)
        @result_arr
    end

    def find_valid_combinations(current_str, current_left, current_cans)
        if current_left == 0
            current_arr = current_str.each_char.map(&:to_i)
            current_arr.sort!
            @result_arr.push(current_arr) if !@result_arr.include?(current_arr)
            return
        end
        current_cans.each do |i|
            if current_left - i >= 0
                work_left = current_left - i
                can_copy = current_cans[0..-1]
                first_occurrence_index = can_copy.index(i)
                can_copy.delete_at(first_occurrence_index)
                find_valid_combinations(current_str + i.to_s, work_left, can_copy)
            end
        end
    end
end

876891