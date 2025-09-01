
# This class contains integer to roman logic
class IntegerToRoman
    ARABIC = [1000, 500, 100, 50, 10, 5, 1].freeze
    ROMAN = ['M', 'D', 'C', 'L', 'X', 'V', 'I'].freeze
    RANGES = [900..999, 400..499, 90..99, 40..49, [9], [4]]
    SUBTRACT_4_9 = [900, 400, 90, 40, 9, 4]
    CHARS_4_9 = ['CM', 'CD', 'XC', 'XL', 'IX', 'IV']

    def integer_to_roman(int)
        roman_str = ''
        working_int = int
        until working_int == 0 do
            found_4_9 = false
            if working_int < 1000
                (0...RANGES.length).each do |j|
                    if RANGES[j].include?(working_int)
                        working_int -= SUBTRACT_4_9[j]
                        roman_str << CHARS_4_9[j]
                        found_4_9 = true
                        break
                    end
                end
            end
            if !found_4_9
                (0...ARABIC.length).each do |i|
                    if working_int >= ARABIC[i]
                        working_int -= ARABIC[i]
                        roman_str << ROMAN[i]
                        break
                    end
                end
            end
        end
        roman_str
    end
end
