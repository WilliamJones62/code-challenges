# frozen_string_literal: true

require 'medium/str_contains_chars'

# Return the string "true" if the first array string includes the second array string characters in sequence
describe StrContainsChars do
  let(:sc) { described_class.new }

  describe 'str_contains_chars' do
    it "returns 'false' for strings 'abcdefg' 'adz'" do
      expect(sc.str_contains_chars(%w[abcdefg adz])).to be(false)
    end

    it "returns 'true' for string 'abcdefg' 'adf'" do
      expect(sc.str_contains_chars(%w[abcdefg adf])).to be(true)
    end

    it "returns 'true' for string 'aaabbbcccdefffg' 'adf'" do
      expect(sc.str_contains_chars(%w[aaabbbcccdefffg adf])).to be(true)
    end
  end
end
