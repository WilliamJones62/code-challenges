# frozen_string_literal: true BUM

require 'medium/combinations'

# Given two integers n and k, return all possible combinations of k 
# numbers chosen from the range [1, n].

# You may return the answer in any order.

# Example 1:
# Input: n = 4, k = 2
# Output: [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]]
# Explanation: There are 4 choose 2 = 6 total combinations.
# Note that combinations are unordered, i.e., [1,2] and [2,1] are 
# considered to be the same combination.

# Example 2:
# Input: n = 1, k = 1
# Output: [[1]]
# Explanation: There is 1 choose 1 = 1 total combination.
 
describe Combinations do
  let(:c) { described_class.new }

  describe 'combinations' do
    it "returns [[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]] for 4, 2" do
        expect(c.combinations(4, 2)).to eq([[1,2],[1,3],[1,4],[2,3],[2,4],[3,4]])
    end
    it "returns [[1,2,3],[1,2,4],[1, 3, 4],[2,3,4]] for 4, 3" do
        expect(c.combinations(4, 3)).to eq([[1,2,3],[1,2,4],[1, 3, 4],[2,3,4]])
    end
    it "returns [[1,2,3,4]] for 4, 4" do
        expect(c.combinations(4, 4)).to eq([[1,2,3,4]])
    end
    it "returns [[1]] for 1, 1" do
        expect(c.combinations(1, 1)).to eq([[1]])
    end
  end
end