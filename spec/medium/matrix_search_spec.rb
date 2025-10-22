# frozen_string_literal: true BUM

require 'medium/matrix_search'

# You are given an m x n integer matrix matrix with the following two 
# properties:

# Each row is sorted in non-decreasing order.
# The first integer of each row is greater than the last integer of the 
# previous row.
# Given an integer target, return true if target is in matrix or false 
# otherwise.

# You must write a solution in O(log(m * n)) time complexity.

# Example 1:
# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
# Output: true

# Example 2:
# Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
# Output: false
 
describe MatrixSearch do
  let(:ms) { described_class.new }

  describe 'matrix_search' do
    it "returns true for [[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3" do
        expect(ms.matrix_search([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 3)).to eq(true)
    end
    it "returns true for [[1,3,5,7],[10,11,16,20],[23,30,34,60]], 60" do
        expect(ms.matrix_search([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 60)).to eq(true)
    end
    it "returns false for [[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13" do
        expect(ms.matrix_search([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 13)).to eq(false)
    end
    it "returns false for [[1,3,5,7],[10,11,16,20],[23,30,34,60]], 0" do
        expect(ms.matrix_search([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 0)).to eq(false)
    end
    it "returns false for [[1,3,5,7],[10,11,16,20],[23,30,34,60]], 70" do
        expect(ms.matrix_search([[1,3,5,7],[10,11,16,20],[23,30,34,60]], 70)).to eq(false)
    end
  end
end