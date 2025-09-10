
# This class contains combination sum logic
class CombinationSum
    def combination_sum(arr, int)
        @candidates = arr
        @result_arr = []
        @target = int
        find_valid_combinations('', int)
        @result_arr
    end

    def find_valid_combinations(current_str, current_left)
        if current_left == 0
            current_arr = current_str.each_char.map(&:to_i)
            current_arr.sort!
            @result_arr.push(current_arr) if !@result_arr.include?(current_arr)
            return
        end
        @candidates.each do |i|
            work_left = current_left - i
            return if work_left < 0
            find_valid_combinations(current_str + i.to_s, work_left)
        end
    end
end
