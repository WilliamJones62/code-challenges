# frozen_string_literal: true

require 'hard/intersecting_lines'

describe IntersectingLines do
  let(:il) { described_class.new }

  describe 'intersecting_lines' do
    it "returns '(9/5,12/5)' for ['(3,0)', '(1,4)', '(0,-3)', '(2,3)']" do
      expect(il.intersecting_lines(['(3,0)', '(1,4)', '(0,-3)', '(2,3)'])).to eq('(9/5,12/5)')
    end

    it "returns '(8/5,3/4)' for ['(0,15)', '(3,-12)', '(2,1)', '(13,7)']" do
      expect(il.intersecting_lines(['(0,15)', '(3,-12)', '(2,1)', '(13,7)'])).to eq('(8/5,3/4)')
    end

    it "returns 'no intersection' for ['(1,2)', '(3,4)', '(-5,-6)', '(-7,-8)']" do
      expect(il.intersecting_lines(['(1,2)', '(3,4)', '(-5,-6)', '(-7,-8)'])).to eq('no intersection')
    end

    it "returns '(3,4)' for ['(9,-2)', '(-2,9)', '(3,4)', '(10,11)']" do
      expect(il.intersecting_lines(['(9,-2)', '(-2,9)', '(3,4)', '(10,11)'])).to eq('(3,4)')
    end

    it "returns '(11/6,11/6)' for ['(100,5)', '(6,2)', '(2,6)', '(5,100)']" do
      expect(il.intersecting_lines(['(100,5)', '(6,2)', '(2,6)', '(5,100)'])).to eq('(11/6,11/6)')
    end

    it "returns 'no intersection' for ['(4,3)', '(2,1)', '(-7,-6)', '(-4,-1)']" do
      expect(il.intersecting_lines(['(4,3)', '(2,1)', '(-7,-6)', '(-4,-1)'])).to eq('no intersection')
    end
  end
end
