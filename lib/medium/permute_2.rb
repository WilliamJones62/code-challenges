class Permute2
    def permute_2(arr)
        @arr = arr
        @arr_len = arr.length
        @result = []
        index = 0
        arr.each do |i|
            permutation([i], [index])
            index += 1
        end
        @result
    end

    def permutation(current_arr, used_indices)
        if current_arr.length == @arr_len
            @result << current_arr if !@result.include?(current_arr)
            return
        end
        index = 0
        @arr.each do |i|
            if !used_indices.include?(index)
                work_arr = current_arr[0..-1]
                work_arr << i
                work_indices = used_indices[0..-1]
                work_indices << index
                permutation(work_arr, work_indices)
            end
            index += 1
        end
    end
end
