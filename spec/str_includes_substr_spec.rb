# frozen_string_literal: true

require 'str_includes_substr'

# Return the string "true" if the first array string includes the second array string
describe 'str_includes_substr' do
  it "returns 'false' for string 'xyz'" do
    expect(str_includes_substr(%w[abcdefg xyz])).to eq(false)
  end

  it "returns 'true' for string 'bcd'" do
    expect(str_includes_substr(%w[abcdefg bcd])).to eq(true)
  end
end
