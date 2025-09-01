# frozen_string_literal: true

require 'medium/matrix_diagonals'

# Given an n x n square matrix of integers grid, return the matrix such that:

# The diagonals in the bottom-left triangle (including the middle diagonal) are sorted in non-increasing order.
# The diagonals in the top-right triangle are sorted in non-decreasing order.

describe MatrixDiagonals do
  let(:md) { described_class.new }

  describe 'matrix_diagonals' do
    it "returns [[8,2,3],[9,6,7],[4,5,1]] for [[1,7,3],[9,8,2],[4,5,6]]" do
      expect(md.matrix_diagonals([[1,7,3],[9,8,2],[4,5,6]])).to eq([[8,2,3],[9,6,7],[4,5,1]])
    end
    it "returns [[2,1],[1,0]] for [[0,1],[1,2]]" do
        expect(md.matrix_diagonals([[0,1],[1,2]])).to eq([[2,1],[1,0]])
    end
    it "returns [[1]] for [[1]]" do
        expect(md.matrix_diagonals([[1]])).to eq([[1]])
    end
  end
end

