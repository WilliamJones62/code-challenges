
# This class contains node pairs logic
class NextPerm
    def next_perm(arr)
        work_arr = arr.permutation(arr.length).to_a
        arr_str = arr.join
        permutation_strs = []
        work_arr.each do |i|
            work_str = i.join
            permutation_strs << work_str if !permutation_strs.include?(work_str)
        end
        permutation_strs.sort!
        work_index = permutation_strs.index(arr_str)
        perm_str = work_index == permutation_strs.length - 1 ? permutation_strs[0] : permutation_strs[work_index + 1]
        perm_str.each_char.map(&:to_i)
    end
end
