# frozen_string_literal: true

require 'division'

# Find the Greatest Common Factor of two numbers
describe 'division' do
  it 'should return 1 for the numbers 7 and 3' do
    expect(division(7, 3)).to eq(1)
  end

  it 'should return 18 for the numbers 36 and 54' do
    expect(division(36, 54)).to eq(18)
  end

  it 'should return 4 for the numbers 12 and 16' do
    expect(division(12, 16)).to eq(4)
  end

  it 'should return 111 for the numbers 777 and 999' do
    expect(division(777, 999)).to eq(111)
  end
end
