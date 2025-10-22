# frozen_string_literal: true BUM

require 'medium/set_matrix_zeros'

# Given an m x n integer matrix matrix, if an element is 0, set its entire 
# row and column to 0's.

# You must do it in place.

# Example 1:
# Input: matrix = [[1,1,1],[1,0,1],[1,1,1]]
# Output: [[1,0,1],[0,0,0],[1,0,1]]

# Example 2:
# Input: matrix = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
# Output: [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
 
describe SetMatrixZeros do
  let(:sm) { described_class.new }

  describe 'set_matrix_zeros' do
    it "returns [[1,0,1],[0,0,0],[1,0,1]] for [[1,1,1],[1,0,1],[1,1,1]]" do
        expect(sm.set_matrix_zeros([[1,1,1],[1,0,1],[1,1,1]])).to eq([[1,0,1],[0,0,0],[1,0,1]])
    end
    it "returns [[0,0,0,0],[0,4,5,0],[0,3,1,0]] for [[0,1,2,0],[3,4,5,2],[1,3,1,5]]" do
        expect(sm.set_matrix_zeros( [[0,1,2,0],[3,4,5,2],[1,3,1,5]])).to eq([[0,0,0,0],[0,4,5,0],[0,3,1,0]])
    end
  end
end