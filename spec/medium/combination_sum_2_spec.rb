# frozen_string_literal: true BUM

require 'medium/combination_sum_2'

# Given a collection of candidate numbers (candidates) and a target number (target), 
# find all unique combinations in candidates where the candidate numbers sum to 
# target.
# Each number in candidates may only be used once in the combination.
# Note: The solution set must not contain duplicate combinations.

# Example 1:
# Input: candidates = [10,1,2,7,6,1,5], target = 8
# Output: 
# [[1,1,6],[1,2,5],[1,7],[2,6]]

# Example 2:
# Input: candidates = [2,5,2,1,2], target = 5
# Output: 
# [[1,2,2],[5]]

describe CombinationSum2 do
  let(:cs) { described_class.new }

  describe 'combination_sum_2' do
    it "returns [[1, 2, 5], [1, 7], [1, 1, 6], [2, 6]] for [10,1,2,7,6,1,5], 8" do
        expect(cs.combination_sum_2([10,1,2,7,6,1,5], 8)).to eq([[1, 2, 5], [1, 7], [1, 1, 6], [2, 6]])
    end
    it "returns [[1, 2, 2], [5]] for [2,5,2,1,2], 5" do
        expect(cs.combination_sum_2([2,5,2,1,2], 5)).to eq([[1, 2, 2], [5]])
    end
    it "returns [] for [2], 1" do
        expect(cs.combination_sum_2([2], 1)).to eq([])
    end
  end
end