# frozen_string_literal: true

require 'medium/numbers_letters'

# Given a string of characters, return a string such that:

# 1. all lowercase characters are converted to uppercase
# 2. all uppercase characters are converted to lowercase
# 3. if an alphabetic substring is bounded by 2 numeric characters, swap the 2 
#       numeric characters

# Example 1:

# Input: string = 'A2bc1*3DE 4''
# Output: 'a1BC2*3de 4'

# Example 2:

# Input: nums = 'fg5+HiJ6kLM7'
# Output: 'FG5+hIj7Klm6'

# Example 3:

# Input: nums = '123'
# Output: '123'

describe NumbersLetters do
  let(:nl) { described_class.new }

  describe 'numbers_letters' do
    it "returns 'a1BC2*3de 4' for 'A2bc1*3DE 4'" do
        expect(nl.numbers_letters('A2bc1*3DE 4')).to eq('a1BC2*3de 4')
    end
    it "returns 'FG5+hIj7Klm6' for 'fg5+HiJ6kLM7'" do
        expect(nl.numbers_letters('fg5+HiJ6kLM7')).to eq('FG5+hIj7Klm6')
    end
    it "returns '123' for '123'" do
        expect(nl.numbers_letters('123')).to eq('123')
    end
  end
end