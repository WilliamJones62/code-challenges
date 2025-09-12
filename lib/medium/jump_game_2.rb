
# This class contains jump game 2 logic
class JumpGame2
    def jump_game_2(arr)
        @arr = arr
        @min_jumps = arr.length
        @arr_len = @min_jumps - 1
        next_jump(arr[0], 0, 0)
        @min_jumps
    end

    def next_jump(jump_len, current_pos, jump_ctr)
        if current_pos == @arr_len
            @min_jumps = jump_ctr if jump_ctr < @min_jumps
            return
        end
        if jump_len != 0 && current_pos < @arr_len
            (1..jump_len).each do |i|
                work_pos = current_pos + i    
                next_jump(@arr[work_pos], work_pos, jump_ctr + 1)
            end
        end
    end
end
