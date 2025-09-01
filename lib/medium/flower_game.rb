# frozen_string_literal: true

# This class contains flower game logic
class FlowerGame
    def flower_game(int1, int2)
        # first idea
        # int1_array = (1..int1).to_a
        # int2_array = (1..int2).to_a
        # int1_odds = (1..int1).select { |n| n.odd? }
        # int1_evens = (1..int1).select { |n| n.even? }
        # int2_odds = (1..int2).select { |n| n.odd? }
        # int2_evens = (1..int2).select { |n| n.even? }
        # (int1_odds.length * int2_evens.length) + (int2_odds.length * int1_evens.length)
        # second idea
        int1_evens = int1 / 2
        int1_mod = int1 % 2
        int1_odds = (int1_mod == 0) ? int1_evens : int1_evens + 1
        int2_evens = int2 / 2
        int2_mod = int2 % 2
        int2_odds = (int2_mod == 0) ? int2_evens : int2_evens + 1
        (int1_odds * int2_evens) + (int2_odds * int1_evens)
    end

end