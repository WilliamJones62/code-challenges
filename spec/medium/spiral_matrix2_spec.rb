# frozen_string_literal: true BUM

require 'medium/spiral_matrix2'

# Given a positive integer n, generate an n x n matrix filled with 
# elements from 1 to n2 in spiral order.

# Example 1:
# Input: n = 3
# Output: [[1,2,3],[8,9,4],[7,6,5]]

# Example 2:
# Input: n = 1
# Output: [[1]]

describe SpiralMatrix2 do
  let(:sm) { described_class.new }

  describe 'spiral_matrix2' do
    it "returns [[1,2,3],[8,9,4],[7,6,5]] for 3" do
        expect(sm.spiral_matrix2(3)).to eq([[1,2,3],[8,9,4],[7,6,5]])
    end
    it "returns [[1]] for 1" do
        expect(sm.spiral_matrix2(1)).to eq([[1]])
    end
  end
end