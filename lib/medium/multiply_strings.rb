
# This class contains multiply strings logic
class MultiplyStrings
    NUMBERS = (0..9).to_a
    CHARACTERS = ('0'..'9').to_a
    def multiply_strings(str1, str2)
        (str_to_int(str1) * str_to_int(str2)).to_s
    end

    def str_to_int(str)
        int = 0
        ctr = 0
        str.chars.reverse.each do |i|
            num = NUMBERS[CHARACTERS.index(i)]
            int += num * 10 ** ctr
            ctr += 1
        end
        int
    end
end
