# frozen_string_literal: true BUM

require 'medium/jump_game'

# You are given an integer array nums. You are initially positioned at the array's 
# first index, and each element in the array represents your maximum jump length at 
# that position.

# Return true if you can reach the last index, or false otherwise.

# Example 1:
# Input: nums = [2,3,1,1,4]
# Output: true
# Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.

# Example 2:
# Input: nums = [3,2,1,0,4]
# Output: false
# Explanation: You will always arrive at index 3 no matter what. Its maximum jump 
# length is 0, which makes it impossible to reach the last index.

describe JumpGame do
  let(:sm) { described_class.new }

  describe 'jump_game' do
    it "returns true for [2,3,1,1,4]" do
        expect(sm.jump_game([2,3,1,1,4])).to eq(true)
    end
    it "returns false for [3,2,1,0,4]" do
        expect(sm.jump_game([3,2,1,0,4])).to eq(false)
    end
  end
end