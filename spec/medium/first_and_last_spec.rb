# frozen_string_literal: true

require 'medium/first_and_last'

# Given an array of integers nums sorted in non-decreasing order, find the starting 
# and ending position of a given target value.
# If target is not found in the array, return [-1, -1].
# You must write an algorithm with O(log n) runtime complexity.

# Example 1:
# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]

# Example 2:
# Input: nums = [5,7,7,8,8,10], target = 6
# Output: [-1,-1]

# Example 3:
# Input: nums = [], target = 0
# Output: [-1,-1]

describe FirstAndLast do
  let(:fl) { described_class.new }

  describe 'first_and_last' do
    it "returns [3,4] for [5,7,7,8,8,10], 8" do
        expect(fl.first_and_last([5,7,7,8,8,10], 8)).to eq([3,4])
    end
    it "returns [3,6] for [5,7,7,8,8,8,8,10], 8" do
        expect(fl.first_and_last([5,7,7,8,8,8,8,10], 8)).to eq([3,6])
    end
    it "returns [-1,-1] for [5,7,7,8,8,10], 6" do
        expect(fl.first_and_last([5,7,7,8,8,10], 6)).to eq([-1,-1])
    end
    it "returns [-1,-1] for [], 0" do
        expect(fl.first_and_last([], 0)).to eq([-1,-1])
    end
  end
end
