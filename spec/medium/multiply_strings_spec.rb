# frozen_string_literal: true BUM

require 'medium/multiply_strings'

# Given two non-negative integers num1 and num2 represented as strings, return the 
# product of num1 and num2, also represented as a string.
# Note: You must not use any built-in BigInteger library or convert the inputs to 
# integer directly.

# Example 1:
# Input: num1 = "2", num2 = "3"
# Output: "6"

# Example 2:
# Input: num1 = "123", num2 = "456"
# Output: "56088"

describe MultiplyStrings do
  let(:ms) { described_class.new }

  describe 'multiply_strings' do
    it "returns '6' for '2', '3'" do
        expect(ms.multiply_strings('2', '3')).to eq('6')
    end
    it "returns '56088' for '123', '456'" do
        expect(ms.multiply_strings('123', '456')).to eq('56088')
    end
    it "returns '359784' for '456', '789'" do
        expect(ms.multiply_strings('456', '789')).to eq('359784')
    end
  end
end