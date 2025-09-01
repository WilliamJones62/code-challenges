# frozen_string_literal: true

require 'medium/string_to_integer'

# Implement the myAtoi(string s) function, which converts a string to a 32-bit 
# signed integer.

# The algorithm for myAtoi(string s) is as follows:

# Whitespace: Ignore any leading whitespace (" ").
# Signedness: Determine the sign by checking if the next character is '-' or '+', 
# assuming positivity if neither present.
# Conversion: Read the integer by skipping leading zeros until a non-digit 
# character is encountered or the end of the string is reached. If no digits were 
# read, then the result is 0.
# Rounding: If the integer is out of the 32-bit signed integer range 
# [-2**31, 2**31 - 1], then round the integer to remain in the range. Specifically, 
# integers less than -2**31 should be rounded to -2**31, and integers greater than 2**31 
# - 1 should be rounded to 2**31 - 1.
# Return the integer as the final result.

 

# Example 1:

# Input: s = "42"

# Output: 42

# Explanation:

# The underlined characters are what is read in and the caret is the current reader position.
# Step 1: "42" (no characters read because there is no leading whitespace)
#          ^
# Step 2: "42" (no characters read because there is neither a '-' nor '+')
#          ^
# Step 3: "42" ("42" is read in)
#            ^
# Example 2:

# Input: s = " -042"

# Output: -42

# Explanation:

# Step 1: "   -042" (leading whitespace is read and ignored)
#             ^
# Step 2: "   -042" ('-' is read, so the result should be negative)
#              ^
# Step 3: "   -042" ("042" is read in, leading zeros ignored in the result)
#                ^
# Example 3:

# Input: s = "1337c0d3"

# Output: 1337

# Explanation:

# Step 1: "1337c0d3" (no characters read because there is no leading whitespace)
#          ^
# Step 2: "1337c0d3" (no characters read because there is neither a '-' nor '+')
#          ^
# Step 3: "1337c0d3" ("1337" is read in; reading stops because the next character is a non-digit)
#              ^
# Example 4:

# Input: s = "0-1"

# Output: 0

# Explanation:

# Step 1: "0-1" (no characters read because there is no leading whitespace)
#          ^
# Step 2: "0-1" (no characters read because there is neither a '-' nor '+')
#          ^
# Step 3: "0-1" ("0" is read in; reading stops because the next character is a non-digit)
#           ^
# Example 5:

# Input: s = "words and 987"

# Output: 0

# Explanation:

# Reading stops at the first non-digit character 'w'.

describe StringToInteger do
  let(:si) { described_class.new }

  describe 'string_to_integer' do
    it "returns 42 for '42'" do
        expect(si.string_to_integer('42')).to eq(42)
    end
    it "returns -42 for '-042'" do
        expect(si.string_to_integer('-042')).to eq(-42)
    end
    it "returns 1337 for '1337c0d3'" do
        expect(si.string_to_integer('1337c0d3')).to eq(1337)
    end
    it "returns 0 for '0-1'" do
        expect(si.string_to_integer('0-1')).to eq(0)
    end
    it "returns 0 for 'words and 987'" do
        expect(si.string_to_integer('words and 987')).to eq(0)
    end
    it "returns -42 for '  -042'" do
        expect(si.string_to_integer('  -042')).to eq(-42)
    end
    it "returns -2147483648 for '-2147483650'" do
        expect(si.string_to_integer('-2147483650')).to eq(-2147483648)
    end
    it "returns 2147483647 for '2147483650'" do
        expect(si.string_to_integer('2147483650')).to eq(2147483647)
    end
  end
end