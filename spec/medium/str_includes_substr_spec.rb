# frozen_string_literal: true

require 'medium/str_includes_substr'

# Return the string "true" if the first array string includes the second array string
describe StrIncludesSubstr do
  let(:si) { described_class.new }

  describe 'str_includes_substr' do
    it "returns 'false' for string 'xyz'" do
      expect(si.str_includes_substr(%w[abcdefg xyz])).to be(false)
    end

    it "returns 'true' for string 'bcd'" do
      expect(si.str_includes_substr(%w[abcdefg bcd])).to be(true)
    end
  end
end
