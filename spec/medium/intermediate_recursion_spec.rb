# frozen_string_literal: true

require 'medium/intermediate_recursion'

# Given integer n sum all the non-negative integers up to n

# Example 1:

# Input: n, m = 2, 2
# Output: 2

# Example 2:

# Input: n, m = 1, 1
# Output: 1

# Example 3:

# Input: n, m = 3, 3
# Output: 6

describe IntermediateRecursion do
  let(:ir) { described_class.new }

  describe 'intermediate_recursion' do
    it "returns 1 for 1, 1" do
        expect(ir.intermediate_recursion(1,1)).to eq(1)
    end
    it "returns 2 for 2, 2" do
        expect(ir.intermediate_recursion(2,2)).to eq(2)
    end
    it "returns 6 for 3, 3" do
        expect(ir.intermediate_recursion(3,3)).to eq(6)
    end
    it "returns 20 for 4, 4" do
        expect(ir.intermediate_recursion(4,4)).to eq(20)
    end
    it "returns 70 for 5, 5" do
        expect(ir.intermediate_recursion(5,5)).to eq(70)
    end
    it "returns 1 for 1, 5" do
        expect(ir.intermediate_recursion(1,5)).to eq(1)
    end
    it "returns 1 for 5, 1" do
        expect(ir.intermediate_recursion(5,1)).to eq(1)
    end
    it "returns 5 for 5, 2" do
        expect(ir.intermediate_recursion(5,2)).to eq(5)
    end
  end
end