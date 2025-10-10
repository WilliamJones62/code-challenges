# frozen_string_literal: true

# This class contains jump game logic
class JumpGame
    def jump_game(arr)
        @arr = arr
        @valid = false
        @arr_len = arr.length - 1
        next_jump(arr[0], 0)
        @valid
    end

    def next_jump(jump_len, current_pos)
        return if @valid

        if current_pos == @arr_len
            @valid = true
            return
        end

        if jump_len != 0 && current_pos < @arr_len
            (1..jump_len).each do |i|
                work_pos = current_pos + i    
                next_jump(@arr[work_pos], work_pos)
            end
        end
    end
end
