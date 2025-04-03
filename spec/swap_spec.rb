# frozen_string_literal: true

require 'swap'

# Take the string parameter and swap the case of each character.
# If a letter is between two numbers, switch the places of the two numbers.
describe Swap do
  let(:sw) { described_class.new }

  describe 'swap' do
    it "returns '34hELLO6 -8wORLD, 79 YES3' for '36Hello4 -8World, 79 yes3'" do
      expect(sw.swap('36Hello4 -8World, 79 yes3')).to eq('34hELLO6 -8wORLD, 79 YES3')
    end

    it "returns 'hELLO -6lol5' for 'Hello -5LOL6'" do
      expect(sw.swap('Hello -5LOL6')).to eq('hELLO -6lol5')
    end

    it "returns '2s 6 DU4D5E' for '2S 6 du5d4e'" do
      expect(sw.swap('2S 6 du5d4e')).to eq('2s 6 DU4D5E')
    end
  end
end
