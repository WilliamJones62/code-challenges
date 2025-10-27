# frozen_string_literal: true BUM

require 'medium/subsets'

# Given an integer array nums of unique elements, return all possible 
# subsets (the power set).

# The solution set must not contain duplicate subsets. Return the 
# solution in any order.

# Example 1:
# Input: nums = [1,2,3]
# Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]

# Example 2:
# Input: nums = [0]
# Output: [[],[0]] 

describe Subsets do
  let(:s) { described_class.new }

  describe 'subsets' do
    it "returns [[], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]] for [1,2,3]" do
        expect(s.subsets([1,2,3])).to eq([[], [1], [1, 2], [1, 2, 3], [1, 3], [2], [2, 3], [3]])
    end
    it "returns [[],[0]] for [0]" do
        expect(s.subsets([0])).to eq([[],[0]])
    end
    it "returns [[], [0], [1], [0,1]] for [0,1]" do
        expect(s.subsets([0])).to eq([[],[0]])
    end
  end
end