# frozen_string_literal: true

require 'str_contains_substr'

# Return the string "true" if the first array string includes the second array string
describe StrContainsSubstr do
  let(:sc) { described_class.new }

  describe 'str_contains_substr' do
    it "returns 'false' for string 'xyz'" do
      expect(sc.str_contains_substr(%w[abcdefg xyz])).to be(false)
    end

    it "returns 'true' for string 'bcd'" do
      expect(sc.str_contains_substr(%w[abcdefg bcd])).to be(true)
    end

    it "returns 'true' for string 'abc'" do
      expect(sc.str_contains_substr(%w[abcdefg abc])).to be(true)
    end

    it "returns 'true' for string 'efg'" do
      expect(sc.str_contains_substr(%w[abcdefg efg])).to be(true)
    end
  end
end
