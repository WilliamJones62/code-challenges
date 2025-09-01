# frozen_string_literal: true

require 'medium/consecutive'

# Return the number of integers needed to complete a consecutive set.
describe Consecutive do
  let(:co) { described_class.new }

  describe 'consecutive' do
    it 'returns 2 for [4, 8, 6]' do
      expect(co.consecutive([4, 8, 6])).to eq(2)
    end

    it 'returns 8 for [5, 10, 15]' do
      expect(co.consecutive([5, 10, 15])).to eq(8)
    end

    it 'returns 10 for [-2, 10, 4]' do
      expect(co.consecutive([-2, 10, 4])).to eq(10)
    end
  end
end
