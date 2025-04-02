# frozen_string_literal: true

# This class contains letter count logic
class LetterCount
  def letter_count(string)
    words = string.split
    word_count = 1
    return_word = nil
    words.each do |word|
      word_count, return_word = update_longest_repeat(word, return_word, word_count)
    end
    return return_word if return_word

    -1
  end

  def update_longest_repeat(word, return_word, word_count)
    word_value = find_longest_repeat(word)
    if word_value > word_count
      return_word = word
      word_count = word_value
    end
    [word_count, return_word]
  end

  def find_longest_repeat(word)
    count_array = word.chars.tally
    count_array.values.max
  end
end
