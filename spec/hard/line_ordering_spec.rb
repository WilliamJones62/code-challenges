# frozen_string_literal: true

require 'hard/line_ordering'

# An array of strings parameter represents the relations among people standing in
# a line. The structure of the array will be ["A>B","B>C","A<D",etc..]. The letters
# stand for different people and the greater than and less than signs stand for a
# person being in front of or behind someone. A>B means A is in front of B and B<C
# means that B is behind C in line. For example if the array is: ["J>B","B<S","D>J"],
# these are the following ways you can arrange the people in line: DSJB, SDJB and DJSB.
# Return the number of ways people can be arranged in line. For this example return the
# number 3. If the relations produce an impossible line ordering so result is zero.
#
# Only the symbols <, >, and the uppercase letters A..Z will be used. The
# maximum number of relations the array will contain is ten.

describe LineOrdering do
  let(:lo) { described_class.new }

  describe 'line_ordering' do
    it "returns 0 for ['A>B', 'B>C', 'C>A']" do
      expect(lo.line_ordering(['A>B', 'B>C', 'C>A'])).to eq(0)
    end

    it "returns 1 for ['A>B', 'A<C', 'C<Z']" do
      expect(lo.line_ordering(['A>B', 'A<C', 'C<Z'])).to eq(1)
    end

    it "returns 3 for ['A>B', 'B<R', 'R<G']" do
      expect(lo.line_ordering(['A>B', 'B<R', 'R<G'])).to eq(3)
    end

    it "returns 3 for ['J>B', 'B<S', 'D>J']" do
      expect(lo.line_ordering(['J>B', 'B<S', 'D>J'])).to eq(3)
    end

    it "returns 2 for ['A>B', 'B<C']" do
      expect(lo.line_ordering(['A>B', 'B<C'])).to eq(2)
    end

    it "returns 1 for ['A>B', 'B>C', 'C>D']" do
      expect(lo.line_ordering(['A>B', 'B>C', 'C>D'])).to eq(1)
    end

    it "returns 4 for ['A>B', 'B>C', 'C>D', 'G>D']" do
      expect(lo.line_ordering(['A>B', 'B>C', 'C>D', 'G>D'])).to eq(4)
    end

    it "returns 5 for ['A>B', 'B>C', 'C>D', 'D>E', 'G>E']" do
      expect(lo.line_ordering(['A>B', 'B>C', 'C>D', 'D>E', 'G>E'])).to eq(5)
    end

    it "returns 3 for ['A>B', 'C>B', 'A<Q']" do
      expect(lo.line_ordering(['A>B', 'C>B', 'A<Q'])).to eq(3)
    end

    it "returns 1 for ['A<B', 'B>A']" do
      expect(lo.line_ordering(['A<B', 'B>A'])).to eq(1)
    end

    it "returns 1 for ['A>C']" do
      expect(lo.line_ordering(['A>C'])).to eq(1)
    end
    # what about a test for return 0?
  end
end
