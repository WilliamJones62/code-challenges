# frozen_string_literal: true

require 'fibonacci_checker'

# Return 'yes' if the number given is part of the Fibonacci sequence.
# Otherwise, return 'no'.

describe 'fibonacci_checker' do
  it "should return 'yes' for 34" do
    expect(fibonacci_checker(34)).to eq('yes')
  end

  it "should return 'no' for 54" do
    expect(fibonacci_checker(54)).to eq('no')
  end

  it "should return 'yes' for 0" do
    expect(fibonacci_checker(0)).to eq('yes')
  end

  it "should return 'yes' for 1" do
    expect(fibonacci_checker(1)).to eq('yes')
  end

  it "should return 'yes' for 2" do
    expect(fibonacci_checker(2)).to eq('yes')
  end
end
