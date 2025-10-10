# frozen_string_literal: true BUM

require 'medium/spiral_matrix'

# Given an m x n matrix, return all elements of the matrix in spiral order.

# Example 1:
# Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
# Output: [1,2,3,6,9,8,7,4,5]

# Example 2:
# Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
# Output: [1,2,3,4,8,12,11,10,9,5,6,7]

describe SpiralMatrix do
  let(:sm) { described_class.new }

  describe 'spiral_matrix' do
    it "returns [1,2,3,6,9,8,7,4,5] for [[1,2,3],[4,5,6],[7,8,9]]" do
        expect(sm.spiral_matrix([[1,2,3],[4,5,6],[7,8,9]])).to eq([1,2,3,6,9,8,7,4,5])
    end
    it "returns [1,2,3,4,8,12,11,10,9,5,6,7] for [[1,2,3,4],[5,6,7,8],[9,10,11,12]]" do
        expect(sm.spiral_matrix([[1,2,3,4],[5,6,7,8],[9,10,11,12]])).to eq([1,2,3,4,8,12,11,10,9,5,6,7])
    end
  end
end