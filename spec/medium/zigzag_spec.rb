# frozen_string_literal: true

require 'medium/zigzag'

# The string "PAYPALISHIRING" is written in a zigzag pattern on a 
# given number of rows like this: (you may want to display this 
# pattern in a fixed font for better legibility)

# P   A   H   N
# A P L S I I G
# Y   I   R
# And then read line by line: "PAHNAPLSIIGYIR"

# Write the code that will take a string and make this conversion
# given a number of rows:

# string convert(string s, int numRows);
 

# Example 1:

# Input: s = "PAYPALISHIRING", numRows = 3
# Output: "PAHNAPLSIIGYIR"
# Example 2:

# Input: s = "PAYPALISHIRING", numRows = 4
# Output: "PINALSIGYAHRPI"
# Explanation:
# P     I    N
# A   L S  I G
# Y A   H R
# P     I
# Example 3:

# Input: s = "A", numRows = 1
# Output: "A"

describe Zigzag do
  let(:zz) { described_class.new }

  describe 'zigzag' do
    it "returns 'PAHNAPLSIIGYIR' for 'PAYPALISHIRING', 3" do
        expect(zz.zigzag('PAYPALISHIRING', 3)).to eq('PAHNAPLSIIGYIR')
    end
    it "returns 'PINALSIGYAHRPI' for 'PAYPALISHIRING', 4" do
        expect(zz.zigzag('PAYPALISHIRING', 4)).to eq('PINALSIGYAHRPI')
    end
    it "returns 'A' for 'A', 1" do
        expect(zz.zigzag('A', 1)).to eq('A')
    end
  end
end
