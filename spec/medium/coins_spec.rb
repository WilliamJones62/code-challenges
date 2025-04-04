# frozen_string_literal: true

require 'medium/coins'

# Return the minimum number of coins to reach input amount
describe Coins do
  let(:co) { described_class.new }

  describe 'coins' do
    it 'returns 2 for 16' do
      expect(co.coins(16)).to eq(2)
    end

    it 'returns 5 for 25' do
      expect(co.coins(25)).to eq(5)
    end

    it 'returns 2 for 6' do
      expect(co.coins(6)).to eq(2)
    end

    it 'returns 24 for 250' do
      expect(co.coins(250)).to eq(24)
    end

    it 'returns 1 for 1' do
      expect(co.coins(1)).to eq(1)
    end
  end
end
