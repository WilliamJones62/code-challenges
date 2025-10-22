# frozen_string_literal: true

# This class contains edit distance logic
class EditDistance
    def edit_distance(str1, str2)
        m = str1.length
        n = str2.length
        
        # Create a 2D array to store results of subproblems. Initialized to 0s 
        dp = Array.new(m + 1) { Array.new(n + 1, 0) }
        # Initialize base cases
        # If str1 is empty, need to insert all characters of str2
        (0..n).each { |j| dp[0][j] = j }

        
        # If str2 is empty, need to delete all characters of str1
        (0..m).each { |i| dp[i][0] = i }
        
        # Fill the dp table
        (1..m).each do |i|
            (1..n).each do |j|
                if str1[i - 1] == str2[j - 1]
                    # Characters match, no operation needed
                    dp[i][j] = dp[i - 1][j - 1]
                else
                    # Characters don't match, take minimum of three operations
                    dp[i][j] = 1 + [
                    dp[i - 1][j],      # Delete from str1
                    dp[i][j - 1],      # Insert into str1
                    dp[i - 1][j - 1]   # Replace in str1
                    ].min
                end
            end
        end
        dp[m][n]
    end
end