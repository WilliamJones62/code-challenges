# frozen_string_literal: true

require 'hard/tetris_move'

# A parameter of an array of characters containing one letter followed by 12
# numbers representing a Tetris piece followed by the fill levels for the 12
# columns of the board. Calculate the greatest number of horizontal lines that
# can be completed when the piece arrives at the bottom assuming it is dropped
# immediately after being rotated and moved horizontally from the top. Tricky
# combinations of vertical and horizontal movements are excluded. No secondary
# row completions are coded for. The piece types are represented by capital
# letters.
#
# For example, with an input of
# ["L","3","4","4","5","6","2","0","6","5","3","6","6"], the board will look
# something like this:
#
#
#
#
#     *  *  **
#    **  ** **
#  ****  ** **
# *****  *****
# ****** *****
# ****** *****
#
# Your result should be 3 because the L piece can be rotated and dropped in
# column 6-7 which will complete 3 full rows of blocks.

describe TetrisMove do
  let(:tm) { described_class.new }

  describe 'tetris_move' do
    it 'returns 3 for L' do
      expect(tm.tetris_move(%w[L 3 4 4 5 6 2 0 6 5 3 6 6])).to eq(3)
    end

    it 'returns 2 for L' do
      expect(tm.tetris_move(%w[L 3 4 4 5 6 1 0 6 5 3 6 6])).to eq(2)
    end

    it 'returns 2 for rotated L' do
      expect(tm.tetris_move(%w[L 3 4 4 5 3 6 0 1 1 5 6 6])).to eq(2)
    end

    it 'returns 1 for L' do
      expect(tm.tetris_move(%w[L 3 4 4 5 2 1 0 6 5 3 6 6])).to eq(1)
    end

    it 'returns 0 for L' do
      expect(tm.tetris_move(%w[L 3 4 4 5 6 3 0 6 5 3 6 6])).to eq(0)
    end

    it 'returns 0 for L outside board' do
      expect(tm.tetris_move(%w[L 0 4 4 5 6 3 2 6 5 3 6 6])).to eq(0)
    end

    it 'returns 4 for I' do
      expect(tm.tetris_move(%w[I 5 5 5 5 5 5 0 7 6 7 6 7])).to eq(4)
    end

    it 'returns 1 for rotated I' do
      expect(tm.tetris_move(%w[I 5 5 5 0 0 0 0 7 6 7 6 7])).to eq(1)
    end

    it 'returns 3 for J' do
      expect(tm.tetris_move(%w[J 5 5 5 5 5 5 0 2 6 7 6 7])).to eq(3)
    end

    it 'returns 2 for O' do
      expect(tm.tetris_move(%w[O 5 5 5 5 5 0 0 7 6 7 6 7])).to eq(2)
    end

    it 'returns 1 for S' do
      expect(tm.tetris_move(%w[S 5 5 5 5 5 5 0 0 1 7 6 7])).to eq(1)
    end

    it 'returns 2 for rotated S' do
      expect(tm.tetris_move(%w[S 5 5 5 5 5 1 0 5 3 7 6 7])).to eq(2)
    end

    it 'returns 2 for T' do
      expect(tm.tetris_move(%w[T 5 5 5 5 5 1 0 1 6 7 6 7])).to eq(2)
    end

    it 'returns 2 for rotated T' do
      expect(tm.tetris_move(%w[T 5 5 5 5 5 1 0 4 6 7 6 7])).to eq(2)
    end

    it 'returns 1 for Z' do
      expect(tm.tetris_move(%w[Z 5 5 5 5 5 1 0 0 4 7 6 7])).to eq(1)
    end

    it 'returns 2 for rotated Z' do
      expect(tm.tetris_move(%w[Z 5 5 5 5 5 3 0 1 3 7 6 7])).to eq(2)
    end
  end
end
