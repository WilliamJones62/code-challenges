# frozen_string_literal: true

require 'str_contains_chars'

# Return the string "true" if the first array string includes the second array string characters in sequence
describe 'str_contains_chars' do
  it "returns 'false' for string 'adz'" do
    expect(str_contains_chars(%w[abcdefg adz])).to eq(false)
  end

  it "returns 'true' for string 'adf'" do
    expect(str_contains_chars(%w[abcdefg adf])).to eq(true)
  end

  it "returns 'true' for string 'adf'" do
    expect(str_contains_chars(%w[aaabbbcccdefffg adf])).to eq(true)
  end
end
