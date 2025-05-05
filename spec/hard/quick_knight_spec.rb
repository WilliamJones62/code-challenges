# frozen_string_literal: true

require 'hard/quick_knight'

# A string parameter represents the starting and target locations of a knight
# on a standard 8x8 chess board with no other pieces on the board. The structure
# of string will be: "(x y)(a b)" where (x y) represents the starting position
# of the knight, with x and y ranging from 1 to 8, and (a b) represents some
# other space on the chess board with a and b also ranging from 1 to 8. Return
# the least number of moves it would take the knight to go from the starting
# position to the ending position. For example if str is "(2 3)(7 5)" then
# return 3 because that is the least amount of moves it would take for the knight
# to get from (2 3) to (7 5) on the chess board.

describe QuickKnight do
  let(:qk) { described_class.new }

  describe 'quick_knight' do
    it 'returns 6 for "(1 1)(8 8)"' do
      expect(qk.quick_knight('(1 1)(8 8)')).to eq(6)
    end

    it 'returns 2 for "(2 2)(3 3)"' do
      expect(qk.quick_knight('(2 2)(3 3)')).to eq(2)
    end

    it 'returns 3 for "(2 3)(7 5)"' do
      expect(qk.quick_knight('(2 3)(7 5)')).to eq(3)
    end

    it 'returns 4 for "(1 1)(2 2)"' do
      expect(qk.quick_knight('(1 1)(2 2)')).to eq(4)
    end

    it 'returns 4 for "(1 1)(3 3)"' do
      expect(qk.quick_knight('(1 1)(3 3)')).to eq(4)
    end

    it 'returns 5 for "(1 1)(8 1)"' do
      expect(qk.quick_knight('(1 1)(8 1)')).to eq(5)
    end

    it 'returns 4 for "(7 8)(5 6)"' do
      expect(qk.quick_knight('(7 8)(5 6)')).to eq(4)
    end

    it 'returns 1 for "(7 8)(8 6)"' do
      expect(qk.quick_knight('(7 8)(8 6)')).to eq(1)
    end

    it 'returns 2 for "(6 3)(7 2)"' do
      expect(qk.quick_knight('(6 3)(7 2)')).to eq(2)
    end

    it 'returns 3 for "(1 1)(1 2)"' do
      expect(qk.quick_knight('(1 1)(1 2)')).to eq(3)
    end
  end
end
