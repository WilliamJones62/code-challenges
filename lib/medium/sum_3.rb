
# This class contains 3 integer sum logic
class Sum3
    def sum_3(arr)
        work_arr = []
        (0...arr.length - 2).each do |i|
            (i + 1...arr.length - 1).each do |j|
                (j + 1...arr.length).each do |k|
                    triplet = [arr[i], arr[j], arr[k]]
                    if triplet.sum == 0 
                        triplet.sort!
                        work_arr.push(triplet) if !work_arr.include?(triplet)
                    end
                end
            end
        end
        work_arr
    end
end
