
# This class contains second highest logic
class RankScores
    def rank_scores(arr)
        arr_length = arr.length

        work_arr = []

        arr.each { |i| work_arr << i[1] }

        work_arr.sort!.reverse!
        rank = 0
        current_value = 0
        results = []
        work_arr.each do |i| 
            if i != current_value
                rank += 1
                current_value = i
            end
            results << [i, rank] 
        end
        results
            
    end
end
