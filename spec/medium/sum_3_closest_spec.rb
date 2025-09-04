# frozen_string_literal: true

require 'medium/sum_3_closest'

# Given an integer array nums of length n and an integer target, find three integers
# in nums such that the sum is closest to target.

# Return the sum of the three integers.

# You may assume that each input would have exactly one solution.

# Example 1:

# Input: nums = [-1,2,1,-4], target = 1
# Output: 2
# Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
# Example 2:

# Input: nums = [0,0,0], target = 1
# Output: 0
# Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).

describe Sum3Closest do
  let(:sc) { described_class.new }

  describe 'sum_3_closest' do
    it "returns 2 for [-1,2,1,-4], 1" do
        expect(sc.sum_3_closest([-1,2,1,-4], 1)).to eq(2)
    end
    it "returns 0 for [0,0,0], 1" do
        expect(sc.sum_3_closest([0,0,0], 1)).to eq(0)
    end
    it "returns 1 for [-1,2,1,-4,20,30,-20,-30], 1" do
        expect(sc.sum_3_closest([-1,2,1,-4,20,30,-20,-30], 1)).to eq(1)
    end
    it "returns 2 for [-1,2,1,-4,20,30,-22,-32], 1" do
      expect(sc.sum_3_closest([-1,2,1,-4,20,30,-22,-32], 1)).to eq(2)
    end
    it "returns 30 for [10,20,30,40,50], 1" do
      expect(sc.sum_3_closest([10,20,30,40,50], 1)).to eq(60)
    end
  end
end
