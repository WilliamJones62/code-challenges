# frozen_string_literal: true

require 'hard/shortest_path'

# A parameter of an array of strings represents a non-looping Graph.
# The structure of the array will be as follows: The first element in the array
# will be the number of nodes N (points). The next N elements will be the nodes
# which can be any string e.g. A, B, C .. Brick Street, Main Street .. etc.
# After the Nth element, the rest of the elements in
# the array will be the connections between all of the nodes e.g.A-B, B-C ..
# Brick Street-Main Street .. etc. There may exist no connections at all.
#
# An example of the array is: ["4","A","B","C","D","A-B","B-D","B-C","C-D"].
# Return the shortest path from the first Node to the last
# Node in the array separated by dashes. So in the example above the output
# should be A-B-D. Another example with array is
# ["7","A","B","C","D","E","F","G","A-B","A-E","B-C","C-D","D-F","E-D","F-G"].
# The output for this array should be A-E-D-F-G. There will only ever be one
# shortest path for the array. If no path between the first and last node
# exists, return -1. The array will at minimum have two nodes. Also, the
# connection A-B for example, means that A can get to B and B can get to A.

describe ShortestPath do
  let(:sp) { described_class.new }

  describe 'shortest_path' do
    it "returns 'A-C-D-F' for ['5','A','B','C','D','F','A-B','A-C','B-C','C-D','D-F']" do
      expect(sp.shortest_path(%w[5 A B C D F A-B A-C B-C C-D D-F])).to eq('A-C-D-F')
    end

    it "returns 'X-W' for ['4', 'X', 'Y', 'Z', 'W', 'X-Y', 'Y-Z', 'X-W']" do
      expect(sp.shortest_path(%w[4 X Y Z W X-Y Y-Z X-W])).to eq('X-W')
    end

    it "returns 'Z-Y-C-Q' for ['6','Z','B','C','A','Y','Q','B-C','A-B','A-Z','C-Y','Z-Y','C-Q']" do
      expect(sp.shortest_path(%w[6 Z B C A Y Q B-C A-B A-Z C-Y Z-Y
                                 C-Q])).to eq('Z-Y-C-Q')
    end

    it "returns -1 for ['7','D','A','N','I','E','L','B','D-A','A-N','E-B','E-L']" do
      expect(sp.shortest_path(%w[7 D A N I E L B D-A A-N E-B E-L])).to eq(-1)
    end

    it "returns 'Z-A-R-E' for
        ['9','Z','B','C','D','R','A','Y','Q','E','A-Z','A-R','Z-Y','Z-C','C-B','Y-Q','Q-D','D-E','R-E']" do
      expect(sp.shortest_path(%w[9 Z B C D R A Y Q E A-Z A-R Z-Y Z-C C-B Y-Q Q-D
                                 D-E R-E])).to eq('Z-A-R-E')
    end

    it "returns 'N1-N2-N5' for ['5','N1','N2','N3','N4','N5','N1-N3','N3-N4','N4-N5','N5-N2','N2-N1']" do
      expect(sp.shortest_path(%w[5 N1 N2 N3 N4 N5 N1-N3 N3-N4 N4-N5 N5-N2
                                 N2-N1])).to eq('N1-N2-N5')
    end
  end
end
