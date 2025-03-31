# frozen_string_literal: true

require 'simple_mode'

# For an array of numbers and return the number that appears most frequently.
# In the event of a tie return the number that appears first in the array.
# Return -1 if there are no repeated numbers.

describe 'run_length' do
  it 'should return 4 for [10, 4, 5, 2, 4]' do
    expect(simple_mode([10, 4, 5, 2, 4])).to eq(4)
  end

  it 'should return 5 for [5, 10, 10, 6, 5]' do
    expect(simple_mode([5, 10, 10, 6, 5])).to eq(5)
  end

  it 'should return 5 for [5, 5, 2, 2, 1]' do
    expect(simple_mode([5, 5, 2, 2, 1])).to eq(5)
  end

  it 'should return -1 for [3, 4, 1, 6, 10]' do
    expect(simple_mode([3, 4, 1, 6, 10])).to eq(-1)
  end
end
