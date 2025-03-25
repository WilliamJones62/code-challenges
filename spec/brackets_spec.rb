# frozen_string_literal: true

require 'brackets'

# Return the 1 if a string contains matching brackets, else return 0
describe 'brackets' do
  it 'returns 1 if the brackets match' do
    expect(brackets('(c(oder)) b(yte)')).to eq(1)
  end

  it 'returns 0 if the brackets do not match' do
    expect(brackets('(coder)(byte))')).to eq(0)
  end

  it 'returns 1 if the brackets match' do
    expect(brackets('(c({}[]oder)) b(yte)')).to eq(1)
  end

  it 'returns 0 if the brackets do not match' do
    expect(brackets('(coder)(byte){ []')).to eq(0)
  end

  it 'returns 0 if the brackets do not match' do
    expect(brackets('}(coder)(byte){ []')).to eq(0)
  end

  it 'returns 0 if the brackets do not match' do
    expect(brackets('(c({}[]oder)) b(yte){')).to eq(0)
  end

  it 'returns 1 if the brackets match' do
    expect(brackets('')).to eq(1)
  end
end
