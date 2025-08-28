# frozen_string_literal: true

require 'hard/array_couples'

# The input parameter is an array of an even number of positive integers. If each pair of integers has a
# matching reversed pair somewhere else in the array then return the string 'true'. If the array doesn't
# contain all matching pairs return a string of the integer pairs that don't match in the order that they
# appear in the array.
describe ArrayCouples do
  let(:ac) { described_class.new }

  describe 'array_couples' do
    it 'returns "5,14,14,1" for [6, 2, 2, 6, 5, 14, 14, 1]' do
      expect(ac.array_couples([6, 2, 2, 6, 5, 14, 14, 1])).to eq('5,14,14,1')
    end

    it 'returns "6,2,2,5,7,14,14,8" for [6, 2, 2, 5, 5, 14, 14, 5, 7, 14, 14, 8, 9, 15, 15, 9]' do
      expect(ac.array_couples([6, 2, 2, 5, 5, 14, 14, 5, 7, 14, 14, 8, 9, 15, 15, 9])).to eq('6,2,2,5,7,14,14,8')
    end

    it 'returns "true" for [6, 2, 2, 6, 5, 14, 14, 5]' do
      expect(ac.array_couples([6, 2, 2, 6, 5, 14, 14, 5])).to eq('true')
    end

    it 'returns "true" for [6, 2, 5, 14, 2, 6, 14, 5]' do
      expect(ac.array_couples([6, 2, 5, 14, 2, 6, 14, 5])).to eq('true')
    end

    it 'returns "3,3" for [2, 1, 1, 2, 3, 3]' do
      expect(ac.array_couples([2, 1, 1, 2, 3, 3])).to eq('3,3')
    end
  end
end
