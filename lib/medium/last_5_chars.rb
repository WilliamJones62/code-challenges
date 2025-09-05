
# This class contains last 5 chars logic
class Last5Chars
    def last_5_chars(str)
        str_arr = str.chars
        work_arr = []
        str_arr.each do |i|
            work_arr.delete(i) if work_arr.include?(i)
            work_arr.push(i)
            work_arr.shift if work_arr.length > 5
        end
        work_arr.reverse.join('-')
    end
end
