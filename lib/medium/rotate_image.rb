class RotateImage
    def rotate_image(arr)
        n = arr.length
        
        (0...n).each do |i|
            (i+1...n).each do |j|
            arr[i][j], arr[j][i] = arr[j][i], arr[i][j]
            end
        end
        
        arr.each do |row|
            row.reverse!
        end
    end
end
