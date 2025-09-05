
# This class contains 4 integer sum logic
class Sum4
    def sum_4(arr, int)
        work_arr = []
        (0...arr.length - 3).each do |i|
            (i + 1...arr.length - 2).each do |j|
                (j + 1...arr.length - 1).each do |k|
                    (k + 1...arr.length).each do |l|
                        quadruplet = [arr[i], arr[j], arr[k], arr[l]]
                        if quadruplet.sum == int
                            quadruplet.sort!
                            work_arr.push(quadruplet) if !work_arr.include?(quadruplet)
                        end
                    end
                end
            end
        end
        work_arr
    end
end
