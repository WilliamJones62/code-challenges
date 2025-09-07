# frozen_string_literal: true

require 'medium/simple_recursion'

# Given integer n sum all the non-negative integers up to n

# Example 1:

# Input: n = 3
# Output: 6

# Example 2:

# Input: n = 1
# Output: 1

describe SimpleRecursion do
  let(:sr) { described_class.new }

  describe 'simple_recursion' do
    it "returns 6 for 3" do
        expect(sr.simple_recursion(3)).to eq(6)
    end
    it "returns 1 for 1" do
        expect(sr.simple_recursion(1)).to eq(1)
    end
  end
end