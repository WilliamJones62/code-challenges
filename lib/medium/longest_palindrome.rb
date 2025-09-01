# frozen_string_literal: true

# This class contains longest substring logic
class LongestPalindrome
    def longest_palindrome(str)
        str_length = str.length
        palindrome = ''
        (0...str_length).each do |i|
            break if (str_length - i) < palindrome.length
            (i...str_length).each do |j|
                if (str_length - j) > palindrome.length
                    palindrome = str[i, str_length - j] if str[i, str_length - j] == (str[i, str_length - j]).reverse
                else
                    break
                end
            end
        end
        palindrome
    end
end
