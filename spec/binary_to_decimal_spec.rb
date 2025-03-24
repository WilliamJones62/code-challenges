# frozen_string_literal: true

require 'binary_to_decimal'

# Return the decimal value of a binary string
describe 'binary_to_decimal' do
  it 'returns the decimal value of a binary string' do
    expect(binary_to_decimal('100101')).to eq(37)
  end

  it 'returns the decimal value of a binary string ignoring leading zeros' do
    expect(binary_to_decimal('0011')).to eq(3)
  end
end
