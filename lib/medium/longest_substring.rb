# frozen_string_literal: true

# This class contains longest substring logic
class LongestSubstring
    def longest_substring(str)
        substring_arr = []
        substring = []
        (0...str.length).each do |i|
            if !substring.include?(str[i])
                substring.push(str[i])
            else
                substring_arr.push(substring)
                new_substring = substring[substring.index(str[i]) + 1, substring.length - 1]
                substring = new_substring
            end
        end
        substring_arr.push(substring)
        substring_arr.map(&:length).max

    end
end
