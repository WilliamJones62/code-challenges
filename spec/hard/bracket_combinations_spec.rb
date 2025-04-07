# frozen_string_literal: true

require 'hard/bracket_combinations'

#  An input parameter of a poritive integer, greater than or equal to zero, will be passed in.
#  The program returns the number of valid combinations
#  that can be formed with the parameter number pairs of parentheses. For example, if the input
#  is 3, then the possible valid combinations of 3 pairs of parenthesis, namely:
#  ()()(), are ()()(), ()(()), (())(), ((())), and (()()). There are 5 total
#  combinations when the input is 3, so your program should return 5.
#
describe BracketCombinations do
  let(:bc) { described_class.new }

  describe 'bracket_combinations' do
    it 'returns 1 for 0' do
      expect(bc.bracket_combinations(0)).to eq(1)
    end

    it 'returns 1 for 1' do
      expect(bc.bracket_combinations(1)).to eq(1)
    end

    it 'returns 2 for 2' do
      expect(bc.bracket_combinations(2)).to eq(2)
    end

    it 'returns 5 for 3' do
      expect(bc.bracket_combinations(3)).to eq(5)
    end

    it 'returns 14 for 4' do
      expect(bc.bracket_combinations(4)).to eq(14)
    end

    it 'returns 42 for 5' do
      expect(bc.bracket_combinations(5)).to eq(42)
    end

    it 'returns 132 for 6' do
      expect(bc.bracket_combinations(6)).to eq(132)
    end

    it 'returns 429 for 7' do
      expect(bc.bracket_combinations(7)).to eq(429)
    end

    it 'returns 1430 for 8' do
      expect(bc.bracket_combinations(8)).to eq(1430)
    end

    it 'returns 4862 for 9' do
      expect(bc.bracket_combinations(9)).to eq(4862)
    end
  end
end
