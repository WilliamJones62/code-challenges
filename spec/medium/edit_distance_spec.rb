# frozen_string_literal: true BUM

require 'medium/edit_distance'

# Given two strings word1 and word2, return the minimum number of operations 
# required to convert word1 to word2.

# You have the following three operations permitted on a word:

# Insert a character
# Delete a character
# Replace a character
 
# Example 1:
# Input: word1 = "horse", word2 = "ros"
# Output: 3
# Explanation: 
# horse -> rorse (replace 'h' with 'r')
# rorse -> rose (remove 'r')
# rose -> ros (remove 'e')

# Example 2:
# Input: word1 = "intention", word2 = "execution"
# Output: 5
# Explanation: 
# intention -> inention (remove 't')
# inention -> enention (replace 'i' with 'e')
# enention -> exention (replace 'n' with 'x')
# exention -> exection (replace 'n' with 'c')
# exection -> execution (insert 'u')

describe EditDistance do
  let(:ed) { described_class.new }

  describe 'edit_distance' do
    it "returns 3 for 'horse', 'ros'" do
        expect(ed.edit_distance('horse', 'ros')).to eq(3)
    end
    it "returns 5 for 'intention', 'execution'" do
        expect(ed.edit_distance('intention', 'execution')).to eq(5)
    end
    it "returns 3 for 'kitten', 'sitting'" do
        expect(ed.edit_distance('kitten', 'sitting')).to eq(3)
    end
  end
end