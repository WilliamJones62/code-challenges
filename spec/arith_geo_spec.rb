# frozen_string_literal: true

require 'arith_geo'

# Return the string "true" if the first array string includes the second array string characters in sequence
describe 'arith_geo' do
  it 'returns the string "Arithmetic" if the sequence follows an arithmetic pattern.' do
    expect(arith_geo([2, 4, 6, 8])).to eq('Arithmetic')
  end

  it 'returns the string "Geometric" if the sequence follows an geometric pattern.' do
    expect(arith_geo([2, 6, 18, 54])).to eq('Geometric')
  end

  it 'returns the string -1 if the sequence follows neither pattern.' do
    expect(arith_geo([2, 6, 18, 12])).to eq(-1)
  end
end
