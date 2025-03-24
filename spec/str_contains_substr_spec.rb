# frozen_string_literal: true

require 'str_contains_substr'

# Return the string "true" if the first array string includes the second array string
describe 'str_contains_substr' do
  it "returns 'false' for string 'xyz'" do
    expect(str_contains_substr(%w[abcdefg xyz])).to eq(false)
  end

  it "returns 'true' for string 'bcd'" do
    expect(str_contains_substr(%w[abcdefg bcd])).to eq(true)
  end

  it "returns 'true' for string 'abc'" do
    expect(str_contains_substr(%w[abcdefg abc])).to eq(true)
  end

  it "returns 'true' for string 'efg'" do
    expect(str_contains_substr(%w[abcdefg efg])).to eq(true)
  end
end
