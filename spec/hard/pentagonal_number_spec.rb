# frozen_string_literal: true

require 'hard/pentagonal_number'

# An integer parameter(num) represents the number (N) of iterations. Return the
# number of dots that exist in a pentagon on the Nth iteration. For example, in the
# first iteration there is only a single dot, on the second
# iteration there are 6 dots, on the third there are 16 dots, and on the fourth
# there are 31 dots.

describe PentagonalNumber do
  let(:pn) { described_class.new }

  describe 'pentagonal_number' do
    it 'returns 1 for 1' do
      expect(pn.pentagonal_number(1)).to eq(1)
    end

    it 'returns 6 for 2' do
      expect(pn.pentagonal_number(2)).to eq(6)
    end

    it 'returns 16 for 3' do
      expect(pn.pentagonal_number(3)).to eq(16)
    end

    it 'returns 31 for 4' do
      expect(pn.pentagonal_number(4)).to eq(31)
    end
  end
end
