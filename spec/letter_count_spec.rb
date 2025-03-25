# frozen_string_literal: true

require 'letter_count'

# Return the first word with the greatest number of repeated letters.
# Return '-1' if none of the words have a repeated letter.

describe 'letter_count' do
  it "should return 'Hello' for 'Hello apple pie' " do
    expect(letter_count('Hello apple pie')).to eq('Hello')
  end

  it "should return '-1 for 'No words'" do
    expect(letter_count('No words')).to eq(-1)
  end
  it "should return 'Hello' for 'Hello apple pie' " do
    expect(letter_count('abbbc bccccd cddddde deeef')).to eq('cddddde')
  end
end
