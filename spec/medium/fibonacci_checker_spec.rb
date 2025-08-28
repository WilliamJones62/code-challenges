# frozen_string_literal: true

require 'medium/fibonacci_checker'

# Return 'yes' if the number given is part of the Fibonacci sequence.
# Otherwise, return 'no'.

describe FibonacciChecker do
  let(:fi) { described_class.new }

  describe 'fibonacci_checker' do
    it "returns 'yes' for 34" do
      expect(fi.fibonacci_checker(34)).to eq('yes')
    end

    it "returns 'no' for 54" do
      expect(fi.fibonacci_checker(54)).to eq('no')
    end

    it "returns 'yes' for 0" do
      expect(fi.fibonacci_checker(0)).to eq('yes')
    end

    it "returns 'yes' for 1" do
      expect(fi.fibonacci_checker(1)).to eq('yes')
    end

    it "returns 'yes' for 2" do
      expect(fi.fibonacci_checker(2)).to eq('yes')
    end
  end
end
