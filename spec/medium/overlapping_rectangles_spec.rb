# frozen_string_literal: true

require 'medium/overlapping_rectangles'

# The string argument represents two rectangles and contains 8 coordinates.
# The first 4 making up rectangle 1 and the last 4 making up rectange 2.
# If the rectangles overlap return the size of overlapping area, else return
# 'No overlap'

describe OverlappingRectangles do
  let(:ol) { described_class.new }

  describe 'overlapping_rectangles' do
    it "returns 1 for '(3,0),(3,-2),(0,0),(0,-2),(2,-1),(3,-1),(2,3),(3,3)'" do
      expect(ol.overlapping_rectangles('(3,0),(3,-2),(0,0),(0,-2),(2,-1),(3,-1),(2,3),(3,3)')).to eq(1)
    end

    it "returns 3 for '(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)'" do
      expect(ol.overlapping_rectangles('(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)')).to eq(3)
    end

    it "returns 9 for '(-1,1),(2,1),(2,-2),(-1,-2),(-2,2),(3,2),(3,-3),(-2,-3)'" do
      expect(ol.overlapping_rectangles('(-1,1),(2,1),(2,-2),(-1,-2),(-2,2),(3,2),(3,-3),(-2,-3)')).to eq(9)
    end

    it "returns 'No overlap' for '(0,0),(5,0),(0,2),(5,2),(0,0),(-5,0),(0,2),(-5,2)'" do
      expect(ol.overlapping_rectangles('(0,0),(5,0),(0,2),(5,2),(0,0),(-5,0),(0,2),(-5,2)')).to eq('No overlap')
    end

    it "returns 'No overlap' for '(0,0),(5,0),(0,2),(5,2),(-1,-1),(-5,-1),(-1,3),(-5,3)'" do
      expect(ol.overlapping_rectangles('(0,0),(5,0),(0,2),(5,2),(-1,-1),(-5,-1),(-1,3),(-5,3)')).to eq('No overlap')
    end
  end
end
