# frozen_string_literal: true

require 'medium/duplicate_count'

# Insert dashes between odd digits.
# Insert asterisks between even digits.
describe DuplicateCount do
  let(:du) { described_class.new }

  describe 'duplicate_count' do
    it 'returns 3 for [0, -2, -2, 5, 5, 5]' do
      expect(du.duplicate_count([0, -2, -2, 5, 5, 5])).to eq(3)
    end

    it 'returns 0 for [100, 2, 101, 4]' do
      expect(du.duplicate_count([100, 2, 101, 4])).to eq(0)
    end

    it 'returns 3 for [5, 0, -2, 5, 5, -2]' do
      expect(du.duplicate_count([5, 0, -2, 5, 5, -2])).to eq(3)
    end
  end
end
