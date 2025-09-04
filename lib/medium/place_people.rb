
# This class contains integer to roman logic
class PlacePeople
    def place_people(arr)
        (arr.length - 1).times do
            (1...arr.length).each do |i|
                arr[i], arr[i-1] = arr[i-1], arr[i] if arr[i][0] <= arr[i-1][0] && arr[i][1] >= arr[i-1][1]
            end
        end
        return_int = 0
        (1...arr.length).each do |i|
            return_int += 1 if arr[i][0] >= arr[i-1][0] && arr[i][1] <= arr[i-1][1]
        end
        return_int
    end
end