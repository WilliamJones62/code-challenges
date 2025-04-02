# frozen_string_literal: true

require 'simple_mode'

# For an array of numbers and return the number that appears most frequently.
# In the event of a tie return the number that appears first in the array.
# Return -1 if there are no repeated numbers.

describe SimpleMode do
  let(:sm) { described_class.new }

  describe 'simple_mode' do
    it 'returns 4 for [10, 4, 5, 2, 4]' do
      expect(sm.simple_mode([10, 4, 5, 2, 4])).to eq(4)
    end

    it 'returns 5 for [5, 10, 10, 6, 5]' do
      expect(sm.simple_mode([5, 10, 10, 6, 5])).to eq(5)
    end

    it 'returns 5 for [5, 5, 2, 2, 1]' do
      expect(sm.simple_mode([5, 5, 2, 2, 1])).to eq(5)
    end

    it 'returns -1 for [3, 4, 1, 6, 10]' do
      expect(sm.simple_mode([3, 4, 1, 6, 10])).to eq(-1)
    end
  end
end
