# frozen_string_literal: true

require 'run_length'

# Replace consecutively repeated characters with a count of how many times it is repeated

describe RunLength do
  let(:rl) { described_class.new }

  describe 'run_length' do
    it "returns '3w2g1o2p' for 'wwwggopp" do
      expect(rl.run_length('wwwggopp')).to eq('3w2g1o2p')
    end

    it "returns '2a2b1c1d1e' for 'aabbcde" do
      expect(rl.run_length('aabbcde')).to eq('2a2b1c1d1e')
    end

    it "returns '3w3b1w' for 'wwwbbbw" do
      expect(rl.run_length('wwwbbbw')).to eq('3w3b1w')
    end
  end
end
