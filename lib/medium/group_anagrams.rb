class GroupAnagrams
    def group_anagrams(arr)
        strs = arr
        sorted_strs = []
        result_arr = []
        arr.each { |str| sorted_strs << str.chars.sort.join }
        until strs.length == 0
            new_arr = []
            next_strs = []
            next_sorted_strs = []
            indices = sorted_strs.each_index.select { |index| sorted_strs[index] == sorted_strs[0] }
            (0...strs.length).each do |i|
                if indices.include?(i)
                    new_arr << strs[i]
                else
                    next_strs << strs[i]
                    next_sorted_strs << sorted_strs[i]
                end
            end
            result_arr << new_arr
            strs = next_strs
            sorted_strs = next_sorted_strs
        end
        sorted_array = result_arr.sort_by { |inner_array| inner_array.length }
        sorted_array.each { |array| array.sort! }
        sorted_array
    end
end
