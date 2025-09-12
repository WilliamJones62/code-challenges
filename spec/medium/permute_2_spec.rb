# frozen_string_literal: true BUM

require 'medium/permute_2'

# Given a collection of numbers, nums, that might contain duplicates, return all 
# possible unique permutations in any order.

# Example 1:
# Input: nums = [1,1,2]
# Output:
# [[1,1,2],[1,2,1],[2,1,1]]

# Example 2:
# Input: nums = [1,2,3]
# Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]

describe Permute2 do
  let(:p) { described_class.new }

  describe 'permute_2' do
    it "returns permutaions for [1,1,2]" do
        expect(p.permute_2([1,1,2])).to eq([[1,1,2],[1,2,1],[2,1,1]])
    end
    it "returns permutaions for [1,2,3]" do
        expect(p.permute_2([1,2,3])).to eq([[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]])
    end
  end
end
