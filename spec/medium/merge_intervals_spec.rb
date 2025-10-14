# frozen_string_literal: true

require 'medium/merge_intervals'

# Given an array of intervals where intervals[i] = [starti, endi], 
# merge all overlapping intervals, and return an array of the 
# non-overlapping intervals that cover all the intervals in the 
# input.

# Example 1:
# Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
# Output: [[1,6],[8,10],[15,18]]
# Explanation: Since intervals [1,3] and [2,6] overlap, merge them 
# into [1,6].

# Example 2:
# Input: intervals = [[1,4],[4,5]]
# Output: [[1,5]]
# Explanation: Intervals [1,4] and [4,5] are considered overlapping.

# Example 3:
# Input: intervals = [[4,7],[1,4]]
# Output: [[1,7]]
# Explanation: Intervals [1,4] and [4,7] are considered overlapping.

describe MergeIntervals do
    let(:mi) { described_class.new }
  
    describe 'merge_intervals' do
      it "returns [[1,6],[8,10],[15,18]] for [[1,3],[2,6],[8,10],[15,18]]" do
          expect(mi.merge_intervals([[1,3],[2,6],[8,10],[15,18]])).to eq([[1,6],[8,10],[15,18]])
      end
      it "returns [[1,5]] for [[1,4],[4,5]]" do
        expect(mi.merge_intervals([[1,4],[4,5]])).to eq([[1,5]])
      end
      it "returns [[1,7]] for [[4,7],[1,4]]" do
        expect(mi.merge_intervals([[4,7],[1,4]])).to eq([[1,7]])
      end
      it "returns [] for [[4,7]]" do
        expect(mi.merge_intervals([[4,7]])).to eq([])
      end
      it "returns [] for []" do
        expect(mi.merge_intervals([])).to eq([])
      end
    end
  end