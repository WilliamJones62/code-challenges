
# This class contains zigzag logic
class Zigzag
    def zigzag(str, int)
        return str if int == 1
        divisor = int + (int - 2)
        lines_arr = []
        (0...int).each { |i| lines_arr.push('') }
        zig = true
        zag = 0
        
        (0...str.length).each do |i|
            mod_val = i % divisor
            if zig
                lines_arr[mod_val] << str[i]
            else
                lines_arr[zag] << str[i]
                zag -= 1
            end
            if mod_val == int - 1
                zig = false 
                zag = mod_val - 1
            end
            zig = true if mod_val == 0
        end
        lines_arr.join
    end
end
