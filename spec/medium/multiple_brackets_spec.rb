# frozen_string_literal: true

require 'medium/multiple_brackets'

# Return 1 followed by the number of brackets if they are correctly matched.
# If the string contains no brackets return 1.
# Otherwise return 0.

describe MultipleBrackets do
  let(:mb) { described_class.new }

  describe 'multiple_brackets' do
    it "returns '0' for '(coder)[byte)]'" do
      expect(mb.multiple_brackets('(coder)[byte)]')).to eq('0')
    end

    it "returns '1 5' for '(c([od]er)) b(yt[e])'" do
      expect(mb.multiple_brackets('(c([od]er)) b(yt[e])')).to eq('1 5')
    end

    it "returns '1 3' for '(hello [world])(!)'" do
      expect(mb.multiple_brackets('(hello [world])(!)')).to eq('1 3')
    end

    it "returns '1' for 'hello world!'" do
      expect(mb.multiple_brackets('hello world!')).to eq('1')
    end

    it "returns '0' for 'hello world!]'" do
      expect(mb.multiple_brackets('hello world!]')).to eq('0')
    end
  end
end
