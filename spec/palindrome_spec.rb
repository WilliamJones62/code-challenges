# frozen_string_literal: true

require 'palindrome'

# If the string is a palindrome return the string 'true', else return the string 'false'.
# Ignore any characters that are not alphabetic. Ignore case.

describe Palindrome do
  let(:pa) { described_class.new }

  describe 'palindrome' do
    it "returns the string 'true' for 'Anne, I vote more cars race Rome-to-Vienna'" do
      expect(pa.palindrome('Anne, I vote more cars race Rome-to-Vienna')).to eq('true')
    end

    it "returns the string 'false' for a long string that is not a palindrome" do
      str = 'If the box contains a diamond, I desire to believe that the box contains a diamond'
      expect(pa.palindrome(str)).to eq('false')
    end

    it "returns the string 'true' for 'Noel - sees Leon'" do
      expect(pa.palindrome('Noel - sees Leon')).to eq('true')
    end

    it "returns the string 'true' for 'A war at Tarawa!'" do
      expect(pa.palindrome('A war at Tarawa!')).to eq('true')
    end

    it "returns the string 'true' for '123A67899'" do
      expect(pa.palindrome('123A67899')).to eq('true')
    end

    it "returns the string 'true' for ''" do
      expect(pa.palindrome('')).to eq('true')
    end
  end
end
