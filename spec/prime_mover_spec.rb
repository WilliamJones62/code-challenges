# frozen_string_literal: true

require 'prime_mover'

# Return 1 if any arrangement of a numbers digits would be a prime number.
# Otherwise return 0.

describe 'prime_mover' do
  it 'should return 2 for the 1st prime number' do
    expect(prime_mover(1)).to eq(2)
  end

  it 'should return 3 for the 2nd prime number' do
    expect(prime_mover(2)).to eq(3)
  end

  it 'should return 5 for the 3rd prime number' do
    expect(prime_mover(3)).to eq(5)
  end

  it 'should return 53 for the 16th prime number' do
    expect(prime_mover(16)).to eq(53)
  end

  it 'should return 23 for the 9th prime number' do
    expect(prime_mover(9)).to eq(23)
  end

  it 'should return 541 for the 100th prime number' do
    expect(prime_mover(100)).to eq(541)
  end
end
