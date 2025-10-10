# frozen_string_literal: true BUM

require 'medium/group_anagrams'

# Given an array of strings strs, group the anagrams together. You can return the 
# answer in any order.

# Example 1:
# Input: strs = ["eat","tea","tan","ate","nat","bat"]
# Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
# Explanation:

# There is no string in strs that can be rearranged to form "bat".
# The strings "nat" and "tan" are anagrams as they can be rearranged to form each 
# other.
# The strings "ate", "eat", and "tea" are anagrams as they can be rearranged to 
# form each other.

# Example 2:
# Input: strs = [""]
# Output: [[""]]

# Example 3:
# Input: strs = ["a"]
# Output: [["a"]]


describe GroupAnagrams do
  let(:ga) { described_class.new }

  describe 'group_anagrams' do
    it "returns [['bat'],['nat','tan'],['ate','eat','tea']] for ['eat','tea','tan','ate','nat','bat']" do
        expect(ga.group_anagrams(['eat','tea','tan','ate','nat','bat'])).to eq([['bat'],['nat','tan'],['ate','eat','tea']])
    end
    it "returns [['']] for ['']" do
        expect(ga.group_anagrams([''])).to eq([['']])
    end
    it "returns [['a']] for ['a']" do
        expect(ga.group_anagrams(['a'])).to eq([['a']])
    end
    it "returns [['hello'],['world'],['dolly', 'lloyd'],['enlist', 'listen', 'silent']] for ['listen', 'silent', 'enlist', 'hello', 'world', 'dolly', 'lloyd']" do
        expect(ga.group_anagrams(['listen', 'silent', 'enlist', 'hello', 'world', 'dolly', 'lloyd'])).to eq([['hello'],['world'],['dolly', 'lloyd'],['enlist', 'listen', 'silent']])
    end
  end
end