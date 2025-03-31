# frozen_string_literal: true

require 'run_length'

# Replace consecutively repeated characters with a count of how many times it is repeated

describe 'run_length' do
  it "should return '3w2g1o2p' for 'wwwggopp" do
    expect(run_length('wwwggopp')).to eq('3w2g1o2p')
  end

  it "should return '2a2b1c1d1e' for 'aabbcde" do
    expect(run_length('aabbcde')).to eq('2a2b1c1d1e')
  end

  it "should return '3w3b1w' for 'wwwbbbw" do
    expect(run_length('wwwbbbw')).to eq('3w3b1w')
  end
end
