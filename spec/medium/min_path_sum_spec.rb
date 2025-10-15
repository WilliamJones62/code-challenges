# frozen_string_literal: true BUM

require 'medium/min_path_sum'

# Given a m x n grid filled with non-negative numbers, find a path 
# from top left to bottom right, which minimizes the sum of all 
# numbers along its path.

# Note: You can only move either down or right at any point in time.

# Example 1:
# Input: grid = [[1,3,1],[1,5,1],[4,2,1]]
# Output: 7
# Explanation: Because the path 1 → 3 → 1 → 1 → 1 minimizes the sum.

# Example 2:
# Input: grid = [[1,2,3],[4,5,6]]
# Output: 12
 
describe MinPathSum do
  let(:mp) { described_class.new }

  describe 'min_path_sum' do
    it "returns 7 for [[1,3,1],[1,5,1],[4,2,1]]" do
        expect(mp.min_path_sum([[1,3,1],[1,5,1],[4,2,1]])).to eq(7)
    end
    it "returns 12 for [[1,2,3],[4,5,6]]" do
        expect(mp.min_path_sum([[1,2,3],[4,5,6]])).to eq(12)
    end
  end
end