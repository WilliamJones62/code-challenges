# frozen_string_literal: true

require 'formatted_division'

# Divide the arguments, return the result with properly formatted commas.
# The result should have 4 significant digits after the decimal point.

describe FormattedDivision do
  let(:fd) { described_class.new }

  describe 'formatted_division' do
    it "returns '12,345.6789'for 123456789 and 10000" do
      expect(fd.formatted_division(123_456_789, 10_000)).to eq('12,345.6789')
    end

    it "returns '0.6667' for 2 and 3" do
      expect(fd.formatted_division(2, 3)).to eq('0.6667')
    end

    it "returns '0.3333' for 1 and 3" do
      expect(fd.formatted_division(1, 3)).to eq('0.3333')
    end

    it "returns '1.0000' for 10 and 10" do
      expect(fd.formatted_division(10, 10)).to eq('1.0000')
    end
  end
end
