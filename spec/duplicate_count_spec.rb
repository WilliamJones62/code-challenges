# frozen_string_literal: true

require 'duplicate_count'

# Insert dashes between odd digits.
# Insert asterisks between even digits.
describe 'duplicate_count' do
  it 'should return 3 for [0, -2, -2, 5, 5, 5] ' do
    expect(duplicate_count([0, -2, -2, 5, 5, 5])).to eq(3)
  end

  it 'should return 0 for [100, 2, 101, 4] ' do
    expect(duplicate_count([100, 2, 101, 4])).to eq(0)
  end

  it 'should return 3 for [5, 0, -2, 5, 5, -2] ' do
    expect(duplicate_count([5, 0, -2, 5, 5, -2])).to eq(3)
  end
end
