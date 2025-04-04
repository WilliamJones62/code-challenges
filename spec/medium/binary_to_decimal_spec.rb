# frozen_string_literal: true

require 'medium/binary_to_decimal'

# Return the decimal value of a binary string
describe BinaryToDecimal do
  let(:bd) { described_class.new }

  describe 'binary_to_decimal' do
    it 'returns the decimal value of a binary string' do
      expect(bd.binary_to_decimal('100101')).to eq(37)
    end

    it 'returns the decimal value of a binary string ignoring leading zeros' do
      expect(bd.binary_to_decimal('0011')).to eq(3)
    end
  end
end
