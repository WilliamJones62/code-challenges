# frozen_string_literal: true

require 'coins'

# Return the minimum number of coins to reach input amount
describe 'coins' do
  it 'should return 2 for 16' do
    expect(coins(16)).to eq(2)
  end

  it 'should return 5 for 25' do
    expect(coins(25)).to eq(5)
  end

  it 'should return 2 for 6' do
    expect(coins(6)).to eq(2)
  end

  it 'should return 24 for 250' do
    expect(coins(250)).to eq(24)
  end

  it 'should return 1 for 1' do
    expect(coins(1)).to eq(1)
  end
end
