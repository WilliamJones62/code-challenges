# frozen_string_literal: true

require 'medium/largest_number'

# Given a list of non-negative integers nums, arrange them such that they form the largest number and return it.

# Since the result may be very large, so you need to return a string instead of an integer.

 

# Example 1:

# Input: nums = [10,2]
# Output: "210"
# Example 2:

# Input: nums = [3,30,34,5,9]
# Output: "9534330"
 

# Constraints:

# 1 <= nums.length <= 100
# 0 <= nums[i] <= 109

describe LargestNumber do
  let(:s4) { described_class.new }

  describe 'largest_number' do
    it "returns '210' for [10,2]" do
        expect(s4.largest_number([10,2])).to eq("210")
    end
    it "returns '9534330' for [3,30,34,5,9]" do
        expect(s4.largest_number([3,30,34,5,9])).to eq("9534330")
    end
  end
end
