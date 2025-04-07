# frozen_string_literal: true

require 'hard/array_rotation'

#  An input parameter of an array of non-negative integers will be passed in.
#  The array will be circularly rotated starting from the Nth element where N is
#  equal to the first integer in the array. For example: if arr is [2, 3, 4, 1,
#  6, 10] then the program should rotate the array starting from the 2nd
#  position because the first element in the array is 2. The final array will
#  therefore be [4, 1, 6, 10, 2, 3], and the program should return the new
#  array as a string, so for this example your program would return '4161023'. The
#  first element in the array will always be an integer greater than or equal to
#  0 and less than the size of the array.

describe ArrayRotation do
  let(:ar) { described_class.new }

  describe 'array_rotation' do
    describe 'valid array processing' do
      it 'returns "4161023" for [2, 3, 4, 1, 6, 10]' do
        expect(ar.array_rotation([2, 3, 4, 1, 6, 10])).to eq('4161023')
      end

      it 'returns "6321" for [3, 2, 1, 6]' do
        expect(ar.array_rotation([3, 2, 1, 6])).to eq('6321')
      end

      it 'returns "124343" for [4, 3, 4, 3, 1, 2]' do
        expect(ar.array_rotation([4, 3, 4, 3, 1, 2])).to eq('124343')
      end
    end

    it 'returns "" for empty array' do
      expect(ar.array_rotation([])).to eq('')
    end

    it 'returns "7" for [7]' do
      expect(ar.array_rotation([7])).to eq('7')
    end
  end
end
