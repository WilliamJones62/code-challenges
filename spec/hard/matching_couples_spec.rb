# frozen_string_literal: true

require 'hard/matching_couples'

# An array of integers parameter is passed in the following format: [M, W, N]
# where M represents the number of men, W represents the number of women, and
# N represents how many people to pair together. Your program should return the
# number of different ways men and women can be paired. For example: if the
# array is [5, 3, 2], there are 5 ways to choose a man and 3 ways to choose a
# woman, so your program should return 15. Another example: if array is [10, 5,
# 4], here N=4 so you need 2 men and 2 women. Choose 2 men from a possible 10,
# and 2 women from a possible 5. There are 2 different ways to pair the chosen
# men and women. The program should therefore return 900
#
# N will always be an even number and it will never be greater than the maximum
# of (M, W). M and W will always be greater than zero.

describe MatchingCouples do
  let(:mc) { described_class.new }

  describe 'matching_couples' do
    it 'returns 15 for [5, 3, 2]' do
      expect(mc.matching_couples([5, 3, 2])).to eq(15)
    end

    it 'returns 900 for [10, 5, 4]' do
      expect(mc.matching_couples([10, 5, 4])).to eq(900)
    end

    it 'returns 200 for [5, 5, 4]]' do
      expect(mc.matching_couples([5, 5, 4])).to eq(200)
    end

    it 'returns 4 for [2, 2, 2]' do
      expect(mc.matching_couples([2, 2, 2])).to eq(4)
    end

    it 'returns 4050 for [10, 10, 4]' do
      expect(mc.matching_couples([10, 10, 4])).to eq(4050)
    end

    it 'returns 25 for [5, 5, 2]' do
      expect(mc.matching_couples([5, 5, 2])).to eq(25)
    end

    it 'returns 86400 for [10, 10, 6]' do
      expect(mc.matching_couples([10, 10, 6])).to eq(172_800)
    end

    it 'returns 450 for [6, 6, 4]' do
      expect(mc.matching_couples([6, 6, 4])).to eq(450)
    end

    it 'returns 327600 for [15, 10, 6]' do
      expect(mc.matching_couples([15, 10, 6])).to eq(655_200)
    end
  end
end
