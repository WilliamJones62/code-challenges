# frozen_string_literal: true

require 'string_reduction'

# Iterate over a string comprised only the letters a, b, and c.
# Replace the adjacent letters 'ab' or 'ba' with 'c',
# replace the adjacent letters 'bc' or 'cb' with 'a',
# and replace the adjacent letters 'ac' or 'ca' with 'b'.
# When no more letters can be replaced return the length of the string.

describe StringReduction do
  let(:sr) { described_class.new }

  describe 'string_reduction' do
    it "returns 2 for 'cab'" do
      expect(sr.string_reduction('cab')).to eq(2)
    end

    it "returns 1 for 'bcab'" do
      expect(sr.string_reduction('bcab')).to eq(1)
    end

    it "'should return 2 for abcabc'" do
      expect(sr.string_reduction('abcabc')).to eq(2)
    end

    it "returns 4 for 'cccc'" do
      expect(sr.string_reduction('cccc')).to eq(4)
    end
  end
end
