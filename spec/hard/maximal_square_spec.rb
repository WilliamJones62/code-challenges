# frozen_string_literal: true

require 'hard/maximal_square'

# The array parameter is a 2D matrix of 0 and 1's. Find the area of the largest
# square submatrix that contains all 1's. A square submatrix is one of equal width
# and height. For example: if the array is ["10100", "10111", "11111", "10010"]
# then this represents the following matrix:
#
#  1 0 1 0 0
#  1 0 1 1 1
#  1 1 1 1 1
#  1 0 0 1 0
#
# The largest square of all '1's is  2x2, so the area which is 4.

describe MaximalSquare do
  let(:ms) { described_class.new }

  describe 'maximal_square' do
    it "returns 4 for ['10100', '10111', '11111', '10010']" do
      expect(ms.maximal_square(%w[10100 10111 11111 10010])).to eq(4)
    end

    it "returns 1 for ['00000', '00000', '00000', '00001']" do
      expect(ms.maximal_square(%w[00000 00000 00000 00001])).to eq(1)
    end

    it "returns 9 for ['0111', '1111', '1111', '1111']" do
      expect(ms.maximal_square(%w[0111 1111 1111 1111])).to eq(9)
    end

    it "returns 1 for ['0111', '1101', '0111']" do
      expect(ms.maximal_square(%w[0111 1101 0111])).to eq(1)
    end

    it "returns 4 for ['1111', '1111']" do
      expect(ms.maximal_square(%w[1111 1111])).to eq(4)
    end

    it "returns 9 for ['1111', '1111', '1111']" do
      expect(ms.maximal_square(%w[1111 1111 1111])).to eq(9)
    end

    it "returns 4 for ['1111', '1101', '1111', '0111']" do
      expect(ms.maximal_square(%w[1111 1101 1111 0111])).to eq(4)
    end

    it "returns 4 for ['01001', '11111', '01011', '11011']" do
      expect(ms.maximal_square(%w[01001 11111 01011 11011])).to eq(4)
    end

    it "returns 9 for ['01001', '11111', '01011', '11111', '01111', '11111']" do
      expect(ms.maximal_square(%w[01001 11111 01011 11111 01111 11111])).to eq(9)
    end

    it "returns 9 for ['101101', '111111', '010111', '111111']" do
      expect(ms.maximal_square(%w[101101 111111 010111 111111])).to eq(9)
    end

    it "returns 16 for ['101101', '111111', '011111', '111111', '001111', '011111'" do
      expect(ms.maximal_square(%w[101101 111111 011111 111111 001111 011111])).to eq(16)
    end
  end
end
