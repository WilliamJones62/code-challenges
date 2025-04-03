# frozen_string_literal: true

require 'three_five_multiples'

# Return the sum of all the multiples of 3 and 5 that are below the argument.
describe ThreeFiveMultiples do
  let(:tf) { described_class.new }

  describe 'three_five_multiples' do
    it 'returns 23 for 10' do
      expect(tf.three_five_multiples(10)).to eq(23)
    end

    it 'returns 8 for 6' do
      expect(tf.three_five_multiples(6)).to eq(8)
    end

    it 'returns 0 for 0' do
      expect(tf.three_five_multiples(1)).to eq(0)
    end

    it 'returns 75 for 16' do
      expect(tf.three_five_multiples(16)).to eq(75)
    end
  end
end
