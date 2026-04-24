
# This class contains second highest logic
class SecondHighest
    def second_highest(arr)
        arr_length = arr.length
        return nil if arr_length < 2

        wage_arr = []

        arr.each { |i| wage_arr.push(i[1]) }

        wage_arr.sort!.reverse!
        uniq_arr = wage_arr.uniq
        results = []
        uniq_arr.each { |i| results << i if wage_arr.count(i) == 1 }

        return nil if results.length < 2
        results[1]
            
    end
end
