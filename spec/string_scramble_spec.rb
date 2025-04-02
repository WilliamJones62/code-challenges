# frozen_string_literal: true

require 'string_scramble'

# Can the second string be built from the characters in the first string

describe StringScramble do
  let(:ss) { described_class.new }

  describe 'string_scramble' do
    it "returns 'true' for the array 'rkqodlw', 'world'" do
      expect(ss.string_scramble('rkqodlw', 'world')).to eq('true')
    end

    it "returns 'true' for the array 'cdore', 'coder'" do
      expect(ss.string_scramble('cdore', 'coder')).to eq('true')
    end

    it "returns 'true' for the array 'h3llko', 'hello'" do
      expect(ss.string_scramble('h3llko', 'hello')).to eq('false')
    end

    it "returns 'false' for the array 'built', 'bill'" do
      expect(ss.string_scramble('built', 'bill')).to eq('false')
    end

    it "returns 'true' for the array 'lilbubilut', 'bill'" do
      expect(ss.string_scramble('llbuilt', 'bill')).to eq('true')
    end
  end
end
