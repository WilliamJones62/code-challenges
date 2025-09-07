# frozen_string_literal: true

require 'medium/remove_node'

# Given the head of a linked list, remove the nth node from the end of the list and 
# return its head.

# Example 1:

# Input: head = [1,2,3,4,5], n = 2
# Output: [1,2,3,5]

# Example 2:

# Input: head = [1], n = 1
# Output: []

# Example 3:

# Input: head = [1,2], n = 1
# Output: [1]

describe RemoveNode do
  let(:rn) { described_class.new }

  describe 'remove_node' do
    it "returns [1,2,3,5] for [1,2,3,4,5], 2" do
        expect(rn.remove_node([1,2,3,4,5], 2)).to eq([1,2,3,5])
    end
    it "returns [] for [1], 1" do
        expect(rn.remove_node([1], 1)).to eq([])
    end
    it "returns [1] for [1,2], 1" do
        expect(rn.remove_node([1,2], 1)).to eq([1])
    end
  end
end