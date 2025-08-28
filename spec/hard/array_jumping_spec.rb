# frozen_string_literal: true

require 'hard/array_jumping'

#  array of numbers stored in arr and first determine the largest element in the
#  array, and then determine whether or not you can reach that same element
#  within the array by moving left or right continuously according to whatever
#  integer is in the current spot. If you can reach the same spot within the
#  array, then your program should output the least amount of jumps it took. For
#  example: if the input is [2, 3, 5, 6, 1] you'll start at the spot where 6 is
#  and if you jump 6 spaces to the right while looping around the array you end
#  up at the last element where the 1 is. Then from here you jump 1 space to the
#  left and you're back where you started, so your program should output 2. If
#  it's impossible to end up back at the largest element in the array your
#  program should output -1. The largest element in the array will never equal
#  the number of elements in the array. The largest element will be unique.

describe ArrayJumping do
  let(:aj) { described_class.new }

  describe 'array_jumping' do
    it 'returns 3 for [1, 2, 3, 4, 2]' do
      expect(aj.array_jumping([1, 2, 3, 4, 2])).to eq(3)
    end

    it 'returns 2 for [1, 7, 1, 1, 1, 1]' do
      expect(aj.array_jumping([1, 7, 1, 1, 1, 1])).to eq(2)
    end

    it 'returns 2 for [2, 3, 5, 6, 1]' do
      expect(aj.array_jumping([2, 3, 5, 6, 1])).to eq(2)
    end

    it 'returns 2 for [1, 2, 1]' do
      expect(aj.array_jumping([1, 2, 1])).to eq(2)
    end

    it 'returns 3 for [1, 2, 1, 2, 1, 9]' do
      expect(aj.array_jumping([1, 2, 1, 2, 1, 9])).to eq(3)
    end

    it 'returns -1 for [1, 6, 5, 7, 9, 2]]' do
      expect(aj.array_jumping([1, 6, 5, 7, 9, 2])).to eq(-1)
    end
  end
end
