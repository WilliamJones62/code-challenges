# frozen_string_literal: true

require 'permutations'

# Return the next number greater than num using the same digits.
# If there aren't any, then return -1.

describe 'permutations' do
  it 'should return 132 for 123' do
    expect(permutations(123)).to eq(132)
  end

  it 'should return 12534 for 12453' do
    expect(permutations(12_453)).to eq(12_534)
  end

  it 'should return -1 for 999' do
    expect(permutations(999)).to eq(-1)
  end

  it 'should return 11211 for 11121 ' do
    expect(permutations(11_121)).to eq(11_211)
  end

  it 'should return 41523 for 41352 ' do
    expect(permutations(41_352)).to eq(41_523)
  end
end
