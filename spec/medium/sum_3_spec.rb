# frozen_string_literal: true

require 'medium/sum_3'

# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] 
# such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

# Notice that the solution set must not contain duplicate triplets.

# Example 1:

# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]
# Explanation: 
# nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
# nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
# nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
# The distinct triplets are [-1,0,1] and [-1,-1,2].
# Notice that the order of the output and the order of the triplets does not matter.
# Example 2:

# Input: nums = [0,1,1]
# Output: []
# Explanation: The only possible triplet does not sum up to 0.
# Example 3:

# Input: nums = [0,0,0]
# Output: [[0,0,0]]
# Explanation: The only possible triplet sums up to 0.

describe Sum3 do
  let(:s3) { described_class.new }

  describe 'sum_3' do
    it "returns [[-1,0,1],[-1,-1,2]] for [-1,0,1,2,-1,-4]" do
        expect(s3.sum_3([-1,0,1,2,-1,-4])).to eq([[-1,0,1],[-1,-1,2]])
    end
    it "returns [] for [0,1,1]" do
        expect(s3.sum_3([0,1,1])).to eq([])
    end
    it "returns [[0,0,0]] for [0,0,0]" do
        expect(s3.sum_3([0,0,0])).to eq([[0,0,0]])
    end
  end
end
