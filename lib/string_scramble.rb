# frozen_string_literal: true

# This class contains string reduction logic
class StringScramble
  def string_scramble(string1, string2)
    hash1 = string1.chars.tally
    hash2 = string2.chars.tally
    hash2.each do |hash|
      return 'false' if !hash1.key?(hash[0]) || hash1[hash[0]] < hash[1]
    end
    'true'
  end
end
