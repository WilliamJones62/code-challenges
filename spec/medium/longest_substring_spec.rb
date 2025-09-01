# frozen_string_literal: true

require 'medium/longest_substring'

# Given a string s, find the length of the longest substring without 
# duplicate characters.

# Example:

# Input: s = "abcabcbb"
# Output: 3
# Explanation: The answer is "abc", with the length of 3.

describe LongestSubstring do
  let(:ls) { described_class.new }

  describe 'longest_substring' do
    it "returns 3 for 'abcabcbb'" do
        expect(ls.longest_substring('abcabcbb')).to eq(3)
    end
    it "returns 1 for 'bbbbb'" do
        expect(ls.longest_substring('bbbbb')).to eq(1)
    end
    it "returns 3 for 'pwwkew'" do
        expect(ls.longest_substring('pwwkew')).to eq(3)
    end
  end
end