# frozen_string_literal: true

require 'number_search'

# Find all the numbers in a string and sum them together. Find the total number of
# letters in the same string. Divide the sum of the numbers by the number of letters and round
# to 0 decimal places and return.

describe NumberSearch do
  let(:ns) { described_class.new }

  describe 'number_search' do
    it "returns 2 for 'Hello6 9World 2, Nic8e D7ay!'" do
      expect(ns.number_search('Hello6 9World 2, Nic8e D7ay!')).to eq(2)
    end

    it "returns 4 for 'H3ello9-9'" do
      expect(ns.number_search('H3ello9-9')).to eq(4)
    end

    it "returns 0 for 'One Number*1*'" do
      expect(ns.number_search('One Number*1*')).to eq(0)
    end

    it "returns 333 for 'One 999'" do
      expect(ns.number_search('One 999')).to eq(333)
    end

    it "returns 333 for 'O10ne 999'" do
      expect(ns.number_search('O10ne 989')).to eq(333)
    end

    it "returns 'No letters in string' for '@#$ 989'" do
      expect(ns.number_search('@#$ 989')).to eq('No letters in string')
    end
  end
end
