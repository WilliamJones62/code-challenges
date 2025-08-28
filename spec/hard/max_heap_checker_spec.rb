# frozen_string_literal: true

require 'hard/max_heap_checker'

# An array represents a heap data structure. If it is a max heap then return the
# string 'max'. If it is not a max heap return all the nodes in string format that
# do not satisfy the max heap property in the order that they appear in the tree.
#
# For example: if the array is [100,19,36,17] then this is a max heap, so retuen
# 'max'. If the array is [10,19,52,13,16] then this is not a max heap, so return
# '19,52'
#
#  Another example: if arr is [10,19,52,104,14] then return '19,52,104'

describe MaxHeapChecker do
  let(:mh) { described_class.new }

  describe 'max_heap_checker' do
    it "returns 'max' for [100, 19, 36, 17]" do
      expect(mh.max_heap_checker([100, 19, 36, 17])).to eq('max')
    end

    it "returns '19,52' for [10, 19, 52, 13, 16]" do
      expect(mh.max_heap_checker([10, 19, 52, 13, 16])).to eq('19,52')
    end

    it "returns '19,52,104' for [10, 19, 52, 104, 14]" do
      expect(mh.max_heap_checker([10, 19, 52, 104, 14])).to eq('19,52,104')
    end

    it "returns '74,75,107' for [73, 74, 75, 7, 2, 107]" do
      expect(mh.max_heap_checker([73, 74, 75, 7, 2, 107])).to eq('74,75,107')
    end

    it "returns '5,10' for [1, 5, 10, 2, 3]" do
      expect(mh.max_heap_checker([1, 5, 10, 2, 3])).to eq('5,10')
    end

    it "returns 'max' for [5, 2, 1, 1, 1]" do
      expect(mh.max_heap_checker([5, 2, 1, 1, 1])).to eq('max')
    end

    it "returns '100' for [86, 100, 2]" do
      expect(mh.max_heap_checker([86, 100, 2])).to eq('100')
    end

    it "returns '74,81,79,90' for [73, 74, 81, 79, 90]" do
      expect(mh.max_heap_checker([73, 74, 81, 79, 90])).to eq('74,81,79,90')
    end

    it "returns '79,90' for [73, 74, 81, 79, 90]" do
      expect(mh.max_heap_checker([73, 72, 1, 79, 90])).to eq('79,90')
    end

    it "returns 'max' for [100, 99, 98, 97, 96, 95, 94]" do
      expect(mh.max_heap_checker([100, 99, 98, 97, 96, 95, 94])).to eq('max')
    end
  end
end
