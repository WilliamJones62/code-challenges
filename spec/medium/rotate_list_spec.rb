# frozen_string_literal: true BUM

require 'medium/rotate_list'

# Given the head of a linked list, rotate the list to the right by 
# k places.

# Example 1:
# Input: head = [1,2,3,4,5], k = 2
# Output: [4,5,1,2,3]

# Example 2:
# Input: head = [0,1,2], k = 4
# Output: [2,0,1]

describe RotateList do
  let(:rl) { described_class.new }

  describe 'rotate_list' do
    it "returns [4,5,1,2,3] for [1,2,3,4,5], 2" do
        expect(rl.rotate_list([1,2,3,4,5], 2)).to eq([4,5,1,2,3])
    end
    it "returns [2,0,1] for [0,1,2], 4" do
        expect(rl.rotate_list([0,1,2], 4)).to eq([2,0,1])
    end
  end
end