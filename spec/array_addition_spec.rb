# frozen_string_literal: true

require 'array_addition'

# Return the string "true" if the first array string includes the second array string characters in sequence
describe 'array_addition' do
  it 'returns the string "true" if the largest number is equal to any combination of other elements.' do
    expect(array_addition([2, 4, 6, 8])).to eq('true')
  end

  it 'returns the string "false" if the largest number is not equal to any combination of other elements.' do
    expect(array_addition([2, 6, 18, 54])).to eq('false')
  end
end
