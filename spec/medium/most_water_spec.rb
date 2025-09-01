# frozen_string_literal: true

require 'medium/most_water'

# You are given an integer array height of length n. There are n vertical 
# lines drawn such that the two endpoints of the ith line are (i, 0) and 
# (i, height[i]).

# Find two lines that together with the x-axis form a container, such 
# that the container contains the most water.

# Return the maximum amount of water a container can store.

# Notice that you may not slant the container.

 

# Example 1:


# Input: height = [1,8,6,2,5,4,8,3,7]
# Output: 49
# Explanation: The above vertical lines are represented by array 
# [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) 
# the container can contain is 49.
# Example 2:

# Input: height = [1,1]
# Output: 1

describe MostWater do
  let(:mw) { described_class.new }

  describe 'most_water' do
    it "returns 49 for [1,8,6,2,5,4,8,3,7]" do
        expect(mw.most_water([1,8,6,2,5,4,8,3,7])).to eq(49)
    end
    it "returns 1 for [1,1]" do
        expect(mw.most_water([1,1])).to eq(1)
    end
    it "returns 9 for [1,2,3,4,5,6]" do
        expect(mw.most_water([1,2,3,4,5,6])).to eq(9)
    end
  end
end
