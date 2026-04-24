
# This class contains second highest logic
class NthHighest
    def nth_highest(arr, int)
        arr_length = arr.length
        return nil if arr_length < int

        wage_arr = []

        arr.each { |i| wage_arr.push(i[1]) }

        wage_arr.sort!.reverse!
        uniq_arr = wage_arr.uniq
        results = []
        uniq_arr.each { |i| results << i if wage_arr.count(i) == 1 }

        return nil if results.length < int
        results[int - 1]
            
    end
end
