
# This class contains first and last logic
class FirstAndLast
    def first_and_last(arr, int)
        result = [-1,-1]
        (0...arr.length).each do |i|
            break if arr[i] > int
            if arr[i] == int
                if result[0] == -1
                    result[0] = i
                else
                    result[1] = i
                end
            end
        end
        result
    end
end
