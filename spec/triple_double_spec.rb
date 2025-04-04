# frozen_string_literal: true

require 'triple_double'

# If there is a straight triple of a number at any place in the first argument,
# and also a straight double of the same number in the second argument.
# Otherwise, return 0.
describe TripleDouble do
  let(:td) { described_class.new }

  describe 'triple_double' do
    it 'returns 1 for 451999277 and 41177722899' do
      expect(td.triple_double(451_999_277, 41_177_722_899)).to eq(1)
    end

    it 'returns 1 for 465555 and 5579' do
      expect(td.triple_double(465_555, 5579)).to eq(1)
    end

    it 'returns 1 for 67844 and 66237' do
      expect(td.triple_double(67_844, 66_237)).to eq(0)
    end
  end
end
