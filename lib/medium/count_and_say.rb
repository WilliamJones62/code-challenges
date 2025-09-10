
# This class contains count and say logic
class CountAndSay
    def count_and_say(int)
        @ctr = 1
        @result_str = '1'
        update_result_str until @ctr == int 
        @result_str
    end

    def update_result_str
        # int has to be greater than 1
        @ctr += 1
        if @ctr == 2
            @result_str = '11'
            return
        end
        # int has to be greater than 2
        work_arr = @result_str.chars
        work_char = work_arr[0]
        char_ctr = 1
        result_arr = []
        (1...work_arr.length).each do |i|
            if work_arr[i] == work_char
                # current character same as the last
                char_ctr += 1
            else
                result_arr << char_ctr.to_s
                result_arr << work_char
                char_ctr = 1
                work_char = work_arr[i]
            end
        end
        result_arr << char_ctr.to_s
        result_arr << work_char
        @result_str = result_arr.join
    end
end
