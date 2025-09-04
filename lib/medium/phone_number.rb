
# This class contains phone number logic
class PhoneNumber
    NUMBERS = ['2', '3', '4', '5', '6', '7', '8', '9']
    LETTERS = [['a','b','c'], ['d','e','f'], ['g','h','i'], 
               ['j','k','l'], ['m','n','o'], ['p','q','r'], 
               ['s','t','u'], ['v','w','x'], ['y','z']]

    def phone_number(str)
        str_chars = str.chars
        work_arr = []
        new_arr = []
        if str_chars.length > 0
            letter_arr = (LETTERS[NUMBERS.index(str_chars[0])])
            letter_arr.each do |i|
                work_arr.push(i)
            end
        end
        (1...str_chars.length).each do |i|
            letter_arr = (LETTERS[NUMBERS.index(str_chars[i])])
            new_arr = []
            work_arr.each do |i|
                letter_arr.each do |j|
                    new_arr.push(i + j)
                end
                work_arr = new_arr.clone
            end
        end
        work_arr.sort
    end
end