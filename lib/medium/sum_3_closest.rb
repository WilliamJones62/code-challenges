
# This class contains closest integer logic
class Sum3Closest
    def sum_3_closest(arr, int)
        closest_int = (arr[0] + arr[1] + arr[2])
        current_dif = (closest_int - int).abs
        (0...arr.length - 2).each do |i|
            (i + 1...arr.length - 1).each do |j|
                (j + 1...arr.length).each do |k|
                    work_int = arr[i] + arr[j] + arr[k]
                    dif_int = (work_int - int).abs
                    if dif_int < current_dif
                        current_dif = dif_int
                        closest_int = work_int
                    end
                end
            end
        end
        closest_int
    end
end
