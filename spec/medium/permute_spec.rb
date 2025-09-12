# frozen_string_literal: true BUM

require 'medium/permute'

# Given an array nums of distinct integers, return all the possible permutations. 
# You can return the answer in any order.

# Example 1:
# Input: nums = [1,2,3]
# Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

# Example 2:
# Input: nums = [0,1]
# Output: [[0,1],[1,0]]

# Example 3:
# Input: nums = [1]
# Output: [[1]]

describe Permute do
  let(:p) { described_class.new }

  describe 'permute' do
    it "returns permutaions for [1,2,3]" do
        expect(p.permute([1,2,3])).to eq([[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]])
    end
    it "returns permutaions for [0,1]" do
        expect(p.permute([0,1])).to eq([[0,1],[1,0]])
    end
    it "returns permutaions for [1]" do
        expect(p.permute([1])).to eq([[1]])
    end
  end
end
