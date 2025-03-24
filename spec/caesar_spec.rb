# frozen_string_literal: true

require 'caesar'

# Return the caesar cipher of an alphabetic string
describe 'caesar' do
  it "should return 'Lipps' for 'Hello' and 4" do
    expect(caesar('Hello', 4)).to eq('Lipps')
  end

  it "should return 'abC' for 'abC' and 0" do
    expect(caesar('abC', 0)).to eq('abC')
  end

  it "should return 'aBc' for 'xYz' and 3" do
    expect(caesar('xYz', 3)).to eq('aBc')
  end

  it "should return 'zAb' for 'wXy' and 3" do
    expect(caesar('wXy', 3)).to eq('zAb')
  end
end
