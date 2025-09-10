# frozen_string_literal: true BUM

require 'medium/count_and_say'

# The count-and-say sequence is a sequence of digit strings defined by the recursive 
# formula:

# countAndSay(1) = "1"
# countAndSay(n) is the run-length encoding of countAndSay(n - 1).
# Run-length encoding (RLE) is a string compression method that works by replacing 
# consecutive identical characters (repeated 2 or more times) with the 
# concatenation of the character and the number marking the count of the characters 
# (length of the run). For example, to compress the string "3322251" we replace 
# "33" with "23", replace "222" with "32", replace "5" with "15" and replace "1" 
# with "11". Thus the compressed string becomes "23321511".

# Given a positive integer n, return the nth element of the count-and-say sequence.

# Example 1:
# Input: n = 4
# Output: "1211"
# Explanation:
# countAndSay(1) = "1"
# countAndSay(2) = RLE of "1" = "11"
# countAndSay(3) = RLE of "11" = "21"
# countAndSay(4) = RLE of "21" = "1211"

# Example 2:
# Input: n = 1
# Output: "1"
# Explanation:
# This is the base case.

describe CountAndSay do
  let(:cs) { described_class.new }

  describe 'count_and_say' do
    it "returns '1211' for 4" do
        expect(cs.count_and_say(4)).to eq('1211')
    end
    it "returns '1' for 1" do
        expect(cs.count_and_say(1)).to eq('1')
    end
    it "returns '13112221' for 7" do
        expect(cs.count_and_say(7)).to eq('13112221')
    end
  end
end