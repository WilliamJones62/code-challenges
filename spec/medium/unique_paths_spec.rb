# frozen_string_literal: true BUM

require 'medium/unique_paths'

# There is a robot on an m x n grid. The robot is initially located 
# at the top-left corner (i.e., grid[0][0]). The robot tries to 
# move to the bottom-right corner (i.e., grid[m - 1][n - 1]). The 
# robot can only move either down or right at any point in time.

# Given the two integers m and n, return the number of possible 
# unique paths that the robot can take to reach the bottom-right 
# corner.

# The test cases are generated so that the answer will be less than 
# or equal to 2 * 109.

# Example 1:
# Input: m = 3, n = 7
# Output: 28

# Example 2:
# Input: m = 3, n = 2
# Output: 3
# Explanation: From the top-left corner, there are a total of 3 ways to reach the bottom-right corner:
# 1. Right -> Down -> Down
# 2. Down -> Down -> Right
# 3. Down -> Right -> Down

describe UniquePaths do
  let(:up) { described_class.new }

  describe 'unique_paths' do
    it "returns 28 for 3, 7" do
        expect(up.unique_paths(3, 7)).to eq(28)
    end
    it "returns 3 for 3, 2" do
        expect(up.unique_paths(3, 2)).to eq(3)
    end
  end
end