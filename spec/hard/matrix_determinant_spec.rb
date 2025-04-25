# frozen_string_literal: true

require 'hard/matrix_determinant'

# an array of strings which represents a square matrix. The elements in the array
# will either contain integers or the string '<>' which indicates the end of a row
# within the matrix excpt for the last row. If the matrix is not square return -1.
# represented as strings. The determinant of the square matrix should be calculated
# and returned. An example of how the array may look is as follows
# ["1","2","<>","3","4"]. The contents of this array are row1=[1 2] and row2=[3
# 4]. The determinant for this array is -2.

describe MatrixDeterminant do
  let(:md) { described_class.new }

  describe 'matrix_determinant' do
    it "returns -4 for ['1', '2', '4', '<>', '2', '1', '1', '<>', '4', '1', '1']" do
      expect(md.matrix_determinant(['1', '2', '4', '<>', '2', '1', '1', '<>', '4', '1', '1'])).to eq(-4)
    end

    it "returns -2 for ['1', '2', '<>', '3', '4']" do
      expect(md.matrix_determinant(['1', '2', '<>', '3', '4'])).to eq(-2)
    end

    it "returns 25 for ['5', '0', '<>', '0', '5']" do
      expect(md.matrix_determinant(['5', '0', '<>', '0', '5'])).to eq(25)
    end

    it "returns 12 for ['1', '2', '4', '<>', '2', '1', '1', '<>', '4', '5', '5']" do
      expect(md.matrix_determinant(['1', '2', '4', '<>', '2', '1', '1', '<>', '4', '5', '5'])).to eq(12)
    end

    it "returns -1 for ['1', '2', '<>', '2', '1', '<>', '1', '1', '1']" do
      expect(md.matrix_determinant(['1', '2', '<>', '2', '1', '<>', '1', '1', '1'])).to eq(-1)
    end

    it "returns 0 for ['1', '0', '<>', '1', '0']" do
      expect(md.matrix_determinant(['1', '0', '<>', '1', '0'])).to eq(0)
    end

    it "returns 73 for ['-1', '-1', '-1', '<>', '0', '9', '100', '<>', '2', '3', '5']" do
      expect(md.matrix_determinant(['-1', '-1', '-1', '<>', '0', '9', '100', '<>', '2', '3', '5'])).to eq(73)
    end

    it 'returns 43 for array 8' do
      expect(md.matrix_determinant(['1', '2', '3', '4', '5', '<>', '2', '2', '4', '5', '6', '<>', '3', '4', '4', '5',
                                    '6', '<>', '4', '5', '5', '0', '1', '<>', '5', '6', '6', '1', '1'])).to eq(43)
    end

    it 'returns 49801192 for array 9' do
      expect(md.matrix_determinant(['1000', '2', '3', '4', '5', '<>', '2', '2', '4', '5', '6', '<>', '3', '4', '4', '5',
                                    '6', '<>', '4', '5', '5', '0', '1', '<>', '5', '6', '6', '1',
                                    '1000'])).to eq(49_801_192)
    end

    it "returns 7 for array '-6', '1', '-6', '<>', '-1', '-1', '-1', '<>', '1', '1', '2'" do
      expect(md.matrix_determinant(['-6', '1', '-6', '<>', '-1', '-1', '-1', '<>', '1', '1', '2'])).to eq(7)
    end
  end
end
