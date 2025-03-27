# frozen_string_literal: true

require 'number_search'

# Find all the numbers in a string and sum them together. Find the total number of
# letters in the same string. Divide the sum of the numbers by the number of letters and round
# to 0 decimal places and return.

describe 'number_search' do
  it "should return 2 for 'Hello6 9World 2, Nic8e D7ay!'" do
    expect(number_search('Hello6 9World 2, Nic8e D7ay!')).to eq(2)
  end

  it "should return 4 for 'H3ello9-9'" do
    expect(number_search('H3ello9-9')).to eq(4)
  end

  it "should return 0 for 'One Number*1*'" do
    expect(number_search('One Number*1*')).to eq(0)
  end

  it "should return 333 for 'One 999'" do
    expect(number_search('One 999')).to eq(333)
  end

  it "should return 333 for 'One 999'" do
    expect(number_search('O10ne 989')).to eq(333)
  end

  it "should return 'No letters in string' for '@#$ 989'" do
    expect(number_search('@#$ 989')).to eq('No letters in string')
  end
end
