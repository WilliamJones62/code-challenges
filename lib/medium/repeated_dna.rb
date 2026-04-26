
# This class contains repeated dna logic
class RepeatedDna
    def repeated_dna(str)
        str_length = str.length
        # create array of 10 letter words
        words = []
        (0..str_length - 10).each { |i| words << str[i, 10] }
        uniq_words = words.uniq
        result = []
        uniq_words.each { |word| result << word if words.count(word) > 1 }
        result
    end
end
