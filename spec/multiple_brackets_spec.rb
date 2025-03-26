# frozen_string_literal: true

require 'multiple_brackets'

# Return 1 followed by the number of brackets if they are correctly matched.
# If the string contains no brackets return 1.
# Otherwise return 0.

describe 'multiple_brackets' do
  it "should return '0' for '(coder)[byte)]'" do
    expect(multiple_brackets('(coder)[byte)]')).to eq('0')
  end

  it "should return '1 5' for '(c([od]er)) b(yt[e])'" do
    expect(multiple_brackets('(c([od]er)) b(yt[e])')).to eq('1 5')
  end

  it "should return '1 3' for '(hello [world])(!)'" do
    expect(multiple_brackets('(hello [world])(!)')).to eq('1 3')
  end

  it "should return '1' for 'hello world!'" do
    expect(multiple_brackets('hello world!')).to eq('1')
  end

  it "should return '0' for 'hello world!]'" do
    expect(multiple_brackets('hello world!]')).to eq('0')
  end
end
