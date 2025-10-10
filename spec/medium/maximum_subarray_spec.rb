# frozen_string_literal: true BUM

require 'medium/maximum_subarray'

# Given an integer array nums, find the subarray with the largest sum, and return 
# its sum.

# Example 1:
# Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
# Output: 6
# Explanation: The subarray [4,-1,2,1] has the largest sum 6.

# Example 2:
# Input: nums = [1]
# Output: 1
# Explanation: The subarray [1] has the largest sum 1.

# Example 3:
# Input: nums = [5,4,-1,7,8]
# Output: 23
# Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.

describe MaximumSubarray do
  let(:ms) { described_class.new }

  describe 'maximum_subarray' do
    it "returns 6 for [-2,1,-3,4,-1,2,1,-5,4]" do
        expect(ms.maximum_subarray([-2,1,-3,4,-1,2,1,-5,4])).to eq(6)
    end
    it "returns 1 for [1]" do
        expect(ms.maximum_subarray([1])).to eq(1)
    end
    it "returns 23 for [5,4,-1,7,8]" do
        expect(ms.maximum_subarray([5,4,-1,7,8])).to eq(23)
    end
 end
end