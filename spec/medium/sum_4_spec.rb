# frozen_string_literal: true

require 'medium/sum_4'

# Given an array nums of n integers, return an array of all the unique quadruplets 
# [nums[a], nums[b], nums[c], nums[d]] such that:

# 0 <= a, b, c, d < n
# a, b, c, and d are distinct.
# nums[a] + nums[b] + nums[c] + nums[d] == target
# You may return the answer in any order.

# Example 1:

# Input: nums = [1,0,-1,0,-2,2], target = 0
# Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

# Example 2:

# Input: nums = [2,2,2,2,2], target = 8
# Output: [[2,2,2,2]]

describe Sum4 do
  let(:s4) { described_class.new }

  describe 'sum_4' do
    it "returns [[-1, 0, 0, 1], [-2, -1, 1, 2], [-2, 0, 0, 2]] for [1,0,-1,0,-2,2], 0" do
        expect(s4.sum_4([1,0,-1,0,-2,2], 0)).to eq([[-1, 0, 0, 1], [-2, -1, 1, 2], [-2, 0, 0, 2]])
    end
    it "returns [[2,2,2,2]] for [2,2,2,2,2], 8" do
        expect(s4.sum_4([2,2,2,2,2], 8)).to eq([[2,2,2,2]])
    end
  end
end
