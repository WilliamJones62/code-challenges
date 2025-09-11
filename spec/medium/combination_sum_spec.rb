# frozen_string_literal: true BUM

require 'medium/combination_sum'

# Given an array of distinct integers candidates and a target integer target, return 
# a list of all unique combinations of candidates where the chosen numbers sum to 
# target. You may return the combinations in any order.

# The same number may be chosen from candidates an unlimited number of times. Two 
# combinations are unique if the frequency of at least one of the chosen numbers is 
# different.

# The test cases are generated such that the number of unique combinations that sum 
# up to target is less than 150 combinations for the given input.

# Example 1:
# Input: candidates = [2,3,6,7], target = 7
# Output: [[2,2,3],[7]]
# Explanation:
# 2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
# 7 is a candidate, and 7 = 7.
# These are the only two combinations.

# Example 2:
# Input: candidates = [2,3,5], target = 8
# Output: [[2,2,2,2],[2,3,3],[3,5]]

# Example 3:
# Input: candidates = [2], target = 1
# Output: []

describe CombinationSum do
  let(:cs) { described_class.new }

  describe 'combination_sum' do
    it "returns [[2,2,3],[7]] for [2,3,6,7], 7" do
        expect(cs.combination_sum([2,3,6,7], 7)).to eq([[2,2,3],[7]])
    end
    it "returns [[2,2,3],[7]] for [10,2,3,6,7], 7" do
      expect(cs.combination_sum([10,2,3,6,7], 7)).to eq([[2,2,3],[7]])
  end
  it "returns [[2,2,2,2],[2,3,3],[3,5]] for [2,3,5], 8" do
        expect(cs.combination_sum([2,3,5], 8)).to eq([[2,2,2,2],[2,3,3],[3,5]])
    end
    it "returns [] for [2], 1" do
        expect(cs.combination_sum([2], 1)).to eq([])
    end
  end
end