# frozen_string_literal: true

require 'hard/nim_winner'

# An array of integers represents the number of coins in each pile. For example:
# [2, 4, 1, 3] means there are 4 piles of coins andthere are 2 coins in the
# first pile, 4 in the second pile, etc. Nim is played by 2 players, each player
# removing any number of coins from only one pile, and the winner is the player
# who picks up the last coin. For example: if arr is [1, 2, 3] then for example
# player 1 can remove 2 coins from the last pile which results in [1, 2, 1].
# Then player 2 can remove 1 coin from the first pile which results in [0, 2, 1],
# etc. The player that has the last possible move taking the last coin(s) from a
# pile wins the game. Returm either 1 or 2 which represents which player has a
# guaranteed win with perfect play.

describe NimWinner do
  let(:nw) { described_class.new }

  describe 'nim_winner' do
    it 'returns 2 for [1, 2, 3]' do
      expect(nw.nim_winner([1, 2, 3])).to eq(2)
    end

    it 'returns 1 for [1, 1, 1, 4, 5, 4]' do
      expect(nw.nim_winner([1, 1, 1, 4, 5, 4])).to eq(1)
    end

    it 'returns 2 for [1, 1, 1, 1]' do
      expect(nw.nim_winner([1, 1, 1, 1])).to eq(2)
    end

    it 'returns 1 for [1, 1, 1]' do
      expect(nw.nim_winner([1, 1, 1])).to eq(1)
    end

    it 'returns 1 for [1, 2, 3, 4]' do
      expect(nw.nim_winner([1, 2, 3, 4])).to eq(1)
    end

    it 'returns 1 for [1, 2, 3, 4, 5, 6]' do
      expect(nw.nim_winner([1, 2, 3, 4, 5, 6])).to eq(1)
    end

    it 'returns 2 for [1, 2, 3, 4, 5, 6, 7]' do
      expect(nw.nim_winner([1, 2, 3, 4, 5, 6, 7])).to eq(2)
    end

    it 'returns 2 for [3, 3, 3, 3]' do
      expect(nw.nim_winner([3, 3, 3, 3])).to eq(2)
    end

    it 'returns 2 for [5, 1, 2, 4, 2]' do
      expect(nw.nim_winner([5, 1, 2, 4, 2])).to eq(2)
    end

    it 'returns 1 for [5, 5, 1, 4, 4]' do
      expect(nw.nim_winner([5, 5, 1, 4, 4])).to eq(1)
    end
  end
end
