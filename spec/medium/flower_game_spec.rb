# frozen_string_literal: true

require 'medium/flower_game'

# Alice and Bob are playing a turn-based game on a field, with two lanes of 
# flowers between them. There are x flowers in the first lane between Alice 
# and Bob, and y flowers in the second lane between them.



# The game proceeds as follows:

# Alice takes the first turn.
# In each turn, a player must choose either one of the 
# lane and pick one flower from that side.
# At the end of the turn, if there are no flowers left at 
# all, the current player captures their opponent and wins 
# the game.
# Given two integers, n and m, the task is to compute the 
# number of possible pairs (x, y) that satisfy the conditions:

# Alice must win the game according to the described rules.
# The number of flowers x in the first lane must be in the 
# range [1,n].
# The number of flowers y in the second lane must be in the 
# range [1,m].
# Return the number of possible pairs (x, y) that satisfy 
# the conditions mentioned in the statement.

describe FlowerGame do
  let(:fg) { described_class.new }

  describe 'flower_game' do
    it "returns 3 for 2, 3" do
      expect(fg.flower_game(2, 3)).to eq(3)
    end
    it "returns 0 for 1, 1" do
        expect(fg.flower_game(1, 1)).to eq(0)
    end
    it "returns 14 for 4, 7" do
        expect(fg.flower_game(4, 7)).to eq(14)
    end
  end
end

