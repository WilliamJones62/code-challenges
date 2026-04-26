# frozen_string_literal: true

require 'medium/rotate_array'

# Given an integer array nums, rotate the array to the right by k steps, 
# where k is non-negative.

 

# Example 1:

# Input: nums = [1,2,3,4,5,6,7], k = 3
# Output: [5,6,7,1,2,3,4]
# Explanation:
# rotate 1 steps to the right: [7,1,2,3,4,5,6]
# rotate 2 steps to the right: [6,7,1,2,3,4,5]
# rotate 3 steps to the right: [5,6,7,1,2,3,4]
# Example 2:

# Input: nums = [-1,-100,3,99], k = 2
# Output: [3,99,-1,-100]
# Explanation: 
# rotate 1 steps to the right: [99,-1,-100,3]
# rotate 2 steps to the right: [3,99,-1,-100]

describe RotateArray do
  let(:s4) { described_class.new }

  describe 'rotate_array' do
    it "returns [5,6,7,1,2,3,4] for [1,2,3,4,5,6,7], 3" do
        expect(s4.rotate_array([1,2,3,4,5,6,7], 3)).to eq([5,6,7,1,2,3,4])
    end
    it "returns [3,99,-1,-100] for [-1,-100,3,99], 2" do
        expect(s4.rotate_array([-1,-100,3,99], 2)).to eq([3,99,-1,-100])
    end
    it "returns [-1,-100,3,99] for [-1,-100,3,99], 0" do
        expect(s4.rotate_array([-1,-100,3,99], 0)).to eq([-1,-100,3,99])
    end
    it "returns [-1,-100,3,99] for [-1,-100,3,99], 8" do
        expect(s4.rotate_array([-1,-100,3,99], 8)).to eq([-1,-100,3,99])
    end
  end
end
