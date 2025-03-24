# frozen_string_literal: true

require 'consecutive'

# Return the number of integers needed to complete a consecutive set.
describe 'consecutive' do
  it 'should return 4 for [4, 8, 6]' do
    expect(consecutive([4, 8, 6])).to eq(2)
  end

  it 'should return 8 for [5, 10, 15]' do
    expect(consecutive([5, 10, 15])).to eq(8)
  end

  it 'should return 10 for [-2, 10, 4]' do
    expect(consecutive([-2, 10, 4])).to eq(10)
  end
end
