
# This class contains node pairs logic
class NodePairs
    def node_pairs(arr)
        input_arr = arr
        index = 0
        result_arr = []
        until input_arr.empty? do
            if input_arr.length == 1
                # single digit
                result_arr << input_arr[0]
                input_arr.shift
                break
            end
            # there is a pair to swap
            result_arr << input_arr[1]
            result_arr << input_arr[0]
            input_arr.shift
            input_arr.shift
        end

        result_arr
    end
end
