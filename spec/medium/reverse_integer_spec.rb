# frozen_string_literal: true

require 'medium/reverse_integer'

# Given a signed 32-bit integer x, return x with its digits reversed. 
# If reversing x causes the value to go outside the signed 32-bit 
# integer range [-231, 231 - 1], then return 0.

# Assume the environment does not allow you to store 64-bit integers 
# (signed or unsigned).

 

# Example 1:

# Input: x = 123
# Output: 321

# Example 2:

# Input: x = -123
# Output: -321

# Example 3:

# Input: x = 120
# Output: 21

describe ReverseInteger do
  let(:ri) { described_class.new }

  describe 'reverse_integer' do
    it "returns 123 for 321" do
        expect(ri.reverse_integer(123)).to eq(321)
    end
    it "returns -123 for -321" do
        expect(ri.reverse_integer(-123)).to eq(-321)
    end
    it "returns 21 for 120" do
        expect(ri.reverse_integer(120)).to eq(21)
    end
  end
end
