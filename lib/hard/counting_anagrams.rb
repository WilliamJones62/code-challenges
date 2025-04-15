# frozen_string_literal: true

# This class contains counting anagrams logic
class CountingAnagrams
  def counting_anagrams(string)
    words = string.split(' ').uniq
    sorted_words = []
    words.each do |word|
      sorted_words.push(word.chars.sort.join)
    end
    sorted_words.length - sorted_words.uniq.length
  end
end
