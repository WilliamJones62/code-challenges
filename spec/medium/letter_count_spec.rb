# frozen_string_literal: true

require 'medium/letter_count'

# Return the first word with the greatest number of repeated letters.
# Return '-1' if none of the words have a repeated letter.

describe LetterCount do
  let(:lc) { described_class.new }

  describe 'letter_count' do
    it "returns 'Hello' for 'Hello apple pie'" do
      expect(lc.letter_count('Hello apple pie')).to eq('Hello')
    end

    it "returns '-1 for 'No words'" do
      expect(lc.letter_count('No words')).to eq(-1)
    end

    it "returns 'cddddde' for 'abbbc bccccd cddddde deeef'" do
      expect(lc.letter_count('abbbc bccccd cddddde deeef')).to eq('cddddde')
    end
  end
end
