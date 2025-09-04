# frozen_string_literal: true

require 'medium/phone_number'

# Given a string containing digits from 2-9 inclusive, return all possible letter 
# combinations that the number could represent. Return the answer in any order.

# A mapping of digits to letters (just like on the telephone buttons) is given 
# below. Note that 1 does not map to any letters.

# Example 1:
# Input: digits = "23"
# Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

# Example 2:
# Input: digits = ""
# Output: []

# Example 3:
# Input: digits = "2"
# Output: ["a","b","c"]

describe PhoneNumber do
  let(:pn) { described_class.new }

  describe 'phone_number' do
    it "returns an array for '23'" do
        expect(pn.phone_number('23')).to eq(["ad","ae","af","bd","be","bf","cd","ce","cf"])
    end
    it "returns an array for '34'" do
        expect(pn.phone_number('34')).to eq(["dg","dh","di","eg","eh","ei","fg","fh","fi"])
    end
    it "returns an array for '345'" do
        expect(pn.phone_number('345')).to eq(["dgj","dgk","dgl","dhj","dhk","dhl","dij","dik","dil","egj","egk","egl","ehj","ehk","ehl","eij","eik","eil","fgj","fgk","fgl","fhj","fhk","fhl","fij","fik","fil"])
    end
    it "returns [] for ''" do
        expect(pn.phone_number('')).to eq([])
    end
    it "returns an array for '2'" do
        expect(pn.phone_number('2')).to eq(["a","b","c"])
    end
  end
end