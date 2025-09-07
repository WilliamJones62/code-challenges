# frozen_string_literal: true

require 'medium/node_pairs'

# Given a linked list, swap every two adjacent nodes and return its head. You must solve the problem without modifying the values in the list's nodes (i.e., only nodes themselves may be changed.)

# Example 1:

# Input: head = [1,2,3,4]
# Output: [2,1,4,3]
# Explanation:

# Example 2:

# Input: head = []
# Output: []

# Example 3:

# Input: head = [1]
# Output: [1]

# Example 4:

# Input: head = [1,2,3]
# Output: [2,1,3]

describe NodePairs do
  let(:np) { described_class.new }

  describe 'node_pairs' do
    it "returns [2,1,4,3] for [1,2,3,4]" do
        expect(np.node_pairs([1,2,3,4])).to eq([2,1,4,3])
    end
    it "returns [] for []" do
        expect(np.node_pairs([])).to eq([])
    end
    it "returns [1] for [1]" do
        expect(np.node_pairs([1])).to eq([1])
    end
    it "returns [2,1,3] for [1,2,3]" do
        expect(np.node_pairs([1,2,3])).to eq([2,1,3])
    end
  end
end