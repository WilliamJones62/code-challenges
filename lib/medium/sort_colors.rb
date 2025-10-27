# frozen_string_literal: true

# This class contains sort colors logic
class SortColors
    def sort_colors(arr)
        n = arr.length
        swapped = true
      
        while swapped
          swapped = false
          (0...(n - 1)).each do |i|
            if arr[i] > arr[i+1]
              arr[i], arr[i+1] = arr[i+1], arr[i]
              swapped = true
            end
          end
        end
        arr
    end
end