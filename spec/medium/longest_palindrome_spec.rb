# frozen_string_literal: true

require 'medium/longest_palindrome'

# Given a string s, return the longest palindromic substring in s.

# Example 1:

# Input: s = "babad"
# Output: "bab"
# Explanation: "aba" is also a valid answer.
# Example 2:

# Input: s = "cbbd"
# Output: "bb"

describe LongestPalindrome do
  let(:lp) { described_class.new }

  describe 'longest_palindrome' do
    it "returns 'bab' for 'babad'" do
        expect(lp.longest_palindrome('babad')).to eq('bab')
    end
    it "returns 'bb' for 'cbbd'" do
        expect(lp.longest_palindrome('cbbd')).to eq('bb')
    end
    it "returns 'babcbab' for 'ababcbabcdcba'" do
        expect(lp.longest_palindrome('ababcbabcdcba')).to eq('babcbab')
    end
  end
end