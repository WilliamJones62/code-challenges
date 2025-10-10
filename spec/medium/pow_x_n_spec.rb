# frozen_string_literal: true BUM

require 'medium/pow_x_n'

# Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

# Example 1:
# Input: x = 2.00000, n = 10
# Output: 1024.00000

# Example 2:
# Input: x = 2.10000, n = 3
# Output: 9.26100

# Example 3:
# Input: x = 2.00000, n = -2
# Output: 0.25000
# Explanation: 2-2 = 1/22 = 1/4 = 0.25

describe PowXN do
  let(:pxn) { described_class.new }

  describe 'pow_x_n' do
    it "returns 1024.00000 for 2.00000, 10" do
        expect(pxn.pow_x_n(2.00000, 10)).to eq(1024.00000)
    end
    it "returns 0.50000 for 2.00000, -1" do
        expect(pxn.pow_x_n(2.00000, -1)).to eq(0.50000)
    end
    it "returns 2.00000 for 2.00000, 1" do
        expect(pxn.pow_x_n(2.00000, 1)).to eq(2.00000)
    end
    it "returns 1.00000 for 2.00000, 0" do
        expect(pxn.pow_x_n(2.00000, 0)).to eq(1.00000)
    end
    it "returns 9.26100 for 2.10000, 3" do
        expect(pxn.pow_x_n(2.10000, 3)).to eq(9.26100)
    end
    it "returns 0.25000 for 2.00000, -2" do
        expect(pxn.pow_x_n(2.00000, -2)).to eq(0.25000)
    end
  end
end