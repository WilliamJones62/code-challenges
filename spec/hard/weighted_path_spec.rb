# frozen_string_literal: true

require 'hard/weighted_path'

# An array of strings models a non-looping weighted Graph. The structure of the
# array is: The first element is the number of nodes N (points) in the array.
# The next N elements are the nodes which can be anything (A, B, C .. Brick Street,
# Main Street .. etc.). After the Nth element, the rest of the elements in the array
# are the connections between the nodes along with their weights (integers)
# separated by the pipe symbol (|). They look like this: (A|B|3, B|C|12 ..
# Brick Street|Main Street|14 .. etc.). However, there may exist no connections at
# all.

# An example of the array is:
# ["4","A","B","C","D","A|B|1","B|D|9","B|C|3","C|D|4"]. Return the shortest path
# when the weights are added up from the first Node to the last Node in the array
# separated by dashes. In the example above the output should be A-B-C-D because 1 +
# 3 + 4 = 8 is the smallest weight total possible

# Another example is:
# ["7","A","B","C","D","E","F","G","A|B|1","A|E|9","B|C|2","C|D|1","D|F|2","E|D|6","F|G|2"].
# The output for this array should be A-B-C-D-F-G.

# There will only ever be one shortest path for the array. If no path between the first and
# last node exists, return -1. The array will have a minimum of two nodes. The connection A-B
# for example, means that A can get to B and B can get to A. A path may not go through any
# Node more than once.

describe WeightedPath do
  let(:wp) { described_class.new }

  describe 'weighted_path' do
    it "returns 'A-BB-CCC' for ['3', 'A', 'BB', 'CCC', 'BB|CCC|13', 'A|BB|2']" do
      expect(wp.weighted_path(['3', 'A', 'BB', 'CCC', 'BB|CCC|13', 'A|BB|2'])).to eq('A-BB-CCC')
    end

    it "returns 'A-B-C' for ['3', 'A', 'B', 'C', 'B|C|13', 'A|B|2']" do
      expect(wp.weighted_path(['3', 'A', 'B', 'C', 'B|C|13', 'A|B|2'])).to eq('A-B-C')
    end

    it "returns 'A-B-D-E-F' for ['6', 'A', 'B', 'C', 'D', 'E', 'F', 'B|A|2', 'A|F|12', 'A|C|4', 'B|D|1', 'D|E|1',
                                'C|D|4', 'F|E|1']" do
      expect(wp.weighted_path(['6', 'A', 'B', 'C', 'D', 'E', 'F', 'B|A|2', 'A|F|12', 'A|C|4', 'B|D|1', 'D|E|1',
                               'C|D|4', 'F|E|1'])).to eq('A-B-D-E-F')
    end

    it "returns 'A-F' for ['6', 'A', 'B', 'C', 'D', 'E', 'F', 'B|A|2', 'A|F|3', 'A|C|4', 'B|D|1', 'D|E|1',
                          'C|D|4', 'F|E|1']" do
      expect(wp.weighted_path(['6', 'A', 'B', 'C', 'D', 'E', 'F', 'B|A|2', 'A|F|3', 'A|C|4', 'B|D|1', 'D|E|1',
                               'C|D|4', 'F|E|1'])).to eq('A-F')
    end

    it "returns 'D-B-A-F' for ['6', 'D', 'B', 'C', 'A', 'E', 'F', 'B|A|2', 'A|F|3', 'A|C|4', 'B|D|1', 'D|E|12',
                              'C|D|4', 'F|E|1']" do
      expect(wp.weighted_path(['6', 'D', 'B', 'C', 'A', 'E', 'F', 'B|A|2', 'A|F|3', 'A|C|4', 'B|D|1', 'D|E|12',
                               'C|D|4', 'F|E|1'])).to eq('D-B-A-F')
    end

    it "returns -1 for ['3', 'AA', 'BB', 'CC', 'CC|BB|102']" do
      expect(wp.weighted_path(['3', 'AA', 'BB', 'CC', 'CC|BB|102'])).to eq(-1)
    end

    it "returns 'C-D-F-G-E-B-H' for ['8', 'C', 'B', 'A', 'D', 'E', 'F', 'G', 'H', 'C|D|1', 'D|F|2', 'G|F|2',
                                    'G|E|1', 'E|B|1', 'H|B|1', 'C|A|13', 'B|A|2', 'C|E|9'']" do
      expect(wp.weighted_path(['8', 'C', 'B', 'A', 'D', 'E', 'F', 'G', 'H', 'C|D|1', 'D|F|2', 'G|F|2', 'G|E|1',
                               'E|B|1', 'H|B|1', 'C|A|13', 'B|A|2', 'C|E|9'])).to eq('C-D-F-G-E-B-H')
    end

    it "returns -1 for ['7', 'D', 'A', 'N', 'I', 'E', 'L', 'B', 'D|A|1', 'A|N|2', 'L|B|22']" do
      expect(wp.weighted_path(['7', 'D', 'A', 'N', 'I', 'E', 'L', 'B', 'D|A|1', 'A|N|2', 'L|B|22'])).to eq(-1)
    end

    it "returns 'GG-HH-JJ' for ['3', 'GG', 'HH', 'JJ', 'GG|JJ|6', 'GG|HH|2', 'JJ|HH|2']" do
      expect(wp.weighted_path(['3', 'GG', 'HH', 'JJ', 'GG|JJ|6', 'GG|HH|2', 'JJ|HH|2'])).to eq('GG-HH-JJ')
    end

    it "returns 'c-a-b-e' for ['5', 'c', 'a', 'b', 'd', 'e', 'c|a|3', 'a|b|2', 'a|d|34', 'b|e|15', 'e|d|2']" do
      expect(wp.weighted_path(['5', 'c', 'a', 'b', 'd', 'e', 'c|a|3', 'a|b|2', 'a|d|34', 'b|e|15',
                               'e|d|2'])).to eq('c-a-b-e')
    end

    it "returns 'C-E-B-H' for ['8', 'C', 'B', 'A', 'D', 'E', 'F', 'G', 'H', 'C|D|1', 'D|F|2', 'G|F|2', 'G|E|1',
                              'E|B|1', 'H|B|1', 'C|A|13', 'B|A|2', 'C|E|1']" do
      expect(wp.weighted_path(['8', 'C', 'B', 'A', 'D', 'E', 'F', 'G', 'H', 'C|D|1', 'D|F|2', 'G|F|2', 'G|E|1',
                               'E|B|1', 'H|B|1', 'C|A|13', 'B|A|2', 'C|E|1'])).to eq('C-E-B-H')
    end
  end
end
