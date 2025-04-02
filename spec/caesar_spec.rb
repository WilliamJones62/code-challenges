# frozen_string_literal: true

require 'caesar'

# Return the caesar cipher of an alphabetic string
describe Caesar do
  let(:ca) { described_class.new }

  describe 'caesar' do
    it "returns 'Lipps' for 'Hello' and 4" do
      expect(ca.caesar('Hello', 4)).to eq('Lipps')
    end

    it "returns 'abC' for 'abC' and 0" do
      expect(ca.caesar('abC', 0)).to eq('abC')
    end

    it "returns 'aBc' for 'xYz' and 3" do
      expect(ca.caesar('xYz', 3)).to eq('aBc')
    end

    it "returns 'zAb' for 'wXy' and 3" do
      expect(ca.caesar('wXy', 3)).to eq('zAb')
    end
  end
end
