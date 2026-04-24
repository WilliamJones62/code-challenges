
# This class contains second highest logic
class LargestNumber
    def largest_number(arr)
        arr_length = arr.length

        str_arr = arr.map(&:to_s)
        perm_arr = str_arr.permutation(arr_length)
        str_arr = []
        perm_arr.each { |i| str_arr << i.join }
        str_arr.sort!.reverse!
        str_arr.first            
    end
end
