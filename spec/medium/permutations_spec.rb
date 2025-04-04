# frozen_string_literal: true

require 'medium/permutations'

# Return the next number greater than num using the same digits.
# If there aren't any, then return -1.

describe Permutations do
  let(:pe) { described_class.new }

  describe 'permutations' do
    it 'returns 132 for 123' do
      expect(pe.permutations(123)).to eq(132)
    end

    it 'returns 12534 for 12453' do
      expect(pe.permutations(12_453)).to eq(12_534)
    end

    it 'returns -1 for 999' do
      expect(pe.permutations(999)).to eq(-1)
    end

    it 'returns 11211 for 11121' do
      expect(pe.permutations(11_121)).to eq(11_211)
    end

    it 'returns 41523 for 41352' do
      expect(pe.permutations(41_352)).to eq(41_523)
    end
  end
end
