# frozen_string_literal: true BUM

require 'medium/sort_colors'

# Given an array nums with n objects colored red, white, or blue, sort them 
# in-place so that objects of the same color are adjacent, with the colors 
# in the order red, white, and blue.

# We will use the integers 0, 1, and 2 to represent the color red, white, 
# and blue, respectively.

# You must solve this problem without using the library's sort function.

# Example 1:
# Input: nums = [2,0,2,1,1,0]
# Output: [0,0,1,1,2,2]

# Example 2:
# Input: nums = [2,0,1]
# Output: [0,1,2]
 
describe SortColors do
  let(:sc) { described_class.new }

  describe 'sort_colors' do
    it "returns [0,0,1,1,2,2] for [2,0,2,1,1,0]" do
        expect(sc.sort_colors([2,0,2,1,1,0])).to eq([0,0,1,1,2,2])
    end
    it "returns [0,1,2] for [2,0,1]" do
        expect(sc.sort_colors([2,0,1])).to eq([0,1,2])
    end
  end
end