
# This class contains most water logic
class MostWater
    def most_water(arr)
        most_water = 0
        arr_len = arr.length
        (0...arr_len - 1).each do |i|
            (i+1...arr_len).each do |j|
                next_container = (j - i)*[arr[i], arr[j]].min 
                most_water = next_container if next_container > most_water
            end
        end
        most_water
    end
end