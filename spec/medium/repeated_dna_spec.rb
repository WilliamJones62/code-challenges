# frozen_string_literal: true

require 'medium/repeated_dna'

# The DNA sequence is composed of a series of nucleotides abbreviated as 'A', 'C', 'G', and 'T'.

# For example, "ACGAATTCCG" is a DNA sequence.
# When studying DNA, it is useful to identify repeated sequences within the DNA.

# Given a string s that represents a DNA sequence, return all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule. You may return the answer in any order.

 

# Example 1:

# Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
# Output: ["AAAAACCCCC","CCCCCAAAAA"]
# Example 2:

# Input: s = "AAAAAAAAAAAAA"
# Output: ["AAAAAAAAAA"]

describe RepeatedDna do
  let(:s4) { described_class.new }

  describe 'repeated_dna' do
    it "returns ['AAAAACCCCC','CCCCCAAAAA'] for 'AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT'" do
        expect(s4.repeated_dna('AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT')).to eq(['AAAAACCCCC','CCCCCAAAAA'])
    end
    it "returns ['AAAAAAAAAA'] for 'AAAAAAAAAAAAA'" do
        expect(s4.repeated_dna('AAAAAAAAAAAAA')).to eq(['AAAAAAAAAA'])
    end
  end
end
