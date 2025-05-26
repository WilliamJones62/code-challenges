# frozen_string_literal: true

require 'hard/wildcard_characters'

# The parameter contains two strings separated by a space. The first string
# will consist of the following sets of characters: +, *, and {N} which is
# optional. The plus (+) character represents a single alphabetic character,
# the asterisk (*) represents a sequence of the same character of length 3
# unless it is followed by {N} which represents how many characters should
# appear in the sequence where N will be at least 1. If the second string
# exactly matches the pattern of the first string in the input return 'true',
# Otherwise return 'false'.
#
# For example: if the parameter is "++*{5} gheeeee" then the second string
# does match the pattern, so return the string true. .

describe WildcardCharacters do
  let(:wp) { described_class.new }

  describe 'wildcard_characters' do
    it "returns 'true' for '++*{5} gheeeee'" do
      expect(wp.wildcard_characters('++*{5} gheeeee')).to eq('true')
    end

    it "returns 'false' for '+++++* abcdemmmmmm'" do
      expect(wp.wildcard_characters('+++++* abcdemmmmmm')).to eq('false')
    end

    it "returns 'true' for '**+*{2} mmmrrrkbb'" do
      expect(wp.wildcard_characters('**+*{2} mmmrrrkbb')).to eq('true')
    end

    it "returns 'false' for '**+*{2} mmmrrrkbbb'" do
      expect(wp.wildcard_characters('**+*{2} mmmrrrkbbb')).to eq('false')
    end

    it "returns 'true' for '+ a'" do
      expect(wp.wildcard_characters('+ a')).to eq('true')
    end

    it "returns 'true' for '*{1}*{1} rt'" do
      expect(wp.wildcard_characters('*{1}*{1} rt')).to eq('true')
    end

    it "returns 'false' for '*+ vvr'" do
      expect(wp.wildcard_characters('*+ vvr')).to eq('false')
    end

    it "returns 'true' for '* ttt'" do
      expect(wp.wildcard_characters('* ttt')).to eq('true')
    end

    it "returns 'false' for '*{7} gggaggggg'" do
      expect(wp.wildcard_characters('*{7} gggaggggg')).to eq('false')
    end

    it "returns 'false' for '+*{10}+ gphpppppppppp'" do
      expect(wp.wildcard_characters('+*{10}+ gphpppppppppp')).to eq('false')
    end

    it "returns 'true' for '****{4}+++ fffbbbeeerrrrmko'" do
      expect(wp.wildcard_characters('****{4}+++ fffbbbeeerrrrmko')).to eq('true')
    end
  end
end
