# frozen_string_literal: true

require 'hard/farthest_nodes'

# An array parameter contains strings of 2 lowercase letters separated by hyphens
# e.g. 'a-b'. These strings make a map of nodes e.g. ['a-b','b-c','c-d'].
# The program returns an integer of the longest possible journey through the map.

describe FarthestNodes do
  let(:fn) { described_class.new }

  describe 'farthest_nodes' do
    it "returns 2 for ['a-b', 'b-c', 'b-d']" do
      expect(fn.farthest_nodes(%w[a-b b-c b-d])).to eq(2)
    end

    it "returns 4 for ['b-e', 'b-c', 'c-d', 'a-b', 'e-f']" do
      expect(fn.farthest_nodes(%w[b-e b-c c-d a-b e-f])).to eq(4)
    end

    it "returns 3 for ['b-a', 'c-e', 'b-c', 'd-c']" do
      expect(fn.farthest_nodes(%w[b-a c-e b-c d-c])).to eq(3)
    end

    it "returns 2 for ['b-a', 'a-c']" do
      expect(fn.farthest_nodes(%w[b-a a-c])).to eq(2)
    end

    it "returns 1 for ['b-a']" do
      expect(fn.farthest_nodes(['b-a'])).to eq(1)
    end

    it "returns 3 for ['b-a', 'a-c', 'c-d']" do
      expect(fn.farthest_nodes(%w[b-a a-c c-d])).to eq(3)
    end

    it "returns 4 for ['a-b', 'b-c', 'c-e', 'a-d']" do
      expect(fn.farthest_nodes(%w[a-b b-c c-e a-d])).to eq(4)
    end

    it "returns 6 for ['a-b', 'b-c', 'c-e', 'a-d', 'g-f', 'f-d']" do
      expect(fn.farthest_nodes(%w[a-b b-c c-e a-d g-f f-d])).to eq(6)
    end

    it "returns 9 for ['b-a', 'a-c', 'c-d', 'e-d', 'e-f', 'f-g', 'g-h', 'i-h', 'i-j']" do
      expect(fn.farthest_nodes(%w[b-a a-c c-d e-d e-f f-g g-h i-h i-j])).to eq(9)
    end
  end
end
