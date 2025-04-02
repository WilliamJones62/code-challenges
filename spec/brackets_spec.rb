# frozen_string_literal: true

require 'brackets'

# Return the 1 if a string contains matching brackets, else return 0
# Return the decimal value of a binary string
describe Brackets do
  let(:br) { described_class.new }

  describe 'brackets' do
    it "returns 1 for '(c(oder)) b(yte)'" do
      expect(br.brackets('(c(oder)) b(yte)')).to eq(1)
    end

    it "returns 0 for '(coder)(byte))'" do
      expect(br.brackets('(coder)(byte))')).to eq(0)
    end

    it "returns 1 for '(c({}[]oder)) b(yte)'" do
      expect(br.brackets('(c({}[]oder)) b(yte)')).to eq(1)
    end

    it "returns 0 for '(coder)(byte){ []'" do
      expect(br.brackets('(coder)(byte){ []')).to eq(0)
    end

    it "returns 0 for '}(coder)(byte){ []'" do
      expect(br.brackets('}(coder)(byte){ []')).to eq(0)
    end

    it "returns 0 for '(c({}[]oder)) b(yte){'" do
      expect(br.brackets('(c({}[]oder)) b(yte){')).to eq(0)
    end

    it "returns 0 for '(coder byte}'" do
      expect(br.brackets('(coder byte}')).to eq(0)
    end

    it "returns 1 for ''" do
      expect(br.brackets('')).to eq(1)
    end
  end
end
