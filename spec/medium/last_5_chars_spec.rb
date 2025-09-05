# frozen_string_literal: true

require 'medium/last_5_chars'

# Given a string of characters, return a string such that:

# the last 5 unique characters in the input string are returned in reverse order
# seperated by hyphens. if a character exists in the output remove it from its
# current position and put at the end

# Example 1:

# Input: string = 'abcde'
# Output: 'e-d-c-b-a'

# Example 2:

# Input: nums = 'abcdea'
# Output: 'a-e-d-c-b'

# Example 3:

# Input: nums = 'abcdebd'
# Output: 'd-b-e-c-a'

# Example 4:

# Input: nums = 'abcdefg'
# Output: 'g-f-e-d-c'

describe Last5Chars do
  let(:lc) { described_class.new }

  describe 'last_5_chars' do
    it "returns 'e-d-c-b-a' for 'abcde'" do
        expect(lc.last_5_chars('abcde')).to eq('e-d-c-b-a')
    end
    it "returns 'a-e-d-c-b' for 'abcdea'" do
        expect(lc.last_5_chars('abcdea')).to eq('a-e-d-c-b')
    end
    it "returns 'd-b-e-c-a' for 'abcdebd'" do
        expect(lc.last_5_chars('abcdebd')).to eq('d-b-e-c-a')
    end
    it "returns 'g-f-e-d-c' for 'abcdefg'" do
        expect(lc.last_5_chars('abcdefg')).to eq('g-f-e-d-c')
    end
  end
end