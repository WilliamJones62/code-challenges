# frozen_string_literal: true

require 'prime_checker'

# Return 1 if any arrangement of a numbers digits would be a prime number.
# Otherwise return 0.

describe 'prime_checker' do
  it 'should output 1 for 910' do
    expect(prime_checker(910)).to eq(1)
  end

  it 'should output 1 98' do
    expect(prime_checker(98)).to eq(1)
  end

  it 'should output 1 for 598' do
    expect(prime_checker(598)).to eq(1)
  end

  it 'should output 0 for 256' do
    expect(prime_checker(256)).to eq(0)
  end
end
