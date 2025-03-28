# frozen_string_literal: true

require 'overlapping_rectangles'

# The string argument represents two rectangles and contains 8 coordinates.
# The first 4 making up rectangle 1 and the last 4 making up rectange 2.
# If the rectangles overlap return the size of overlapping area, else return
# 'No overlap'

describe 'number_search' do
  it "should return 1 for '(3,0),(3,-2),(0,0),(0,-2),(2,-1),(3,-1),(2,3),(3,3)'" do
    expect(overlapping_rectangles('(3,0),(3,-2),(0,0),(0,-2),(2,-1),(3,-1),(2,3),(3,3)')).to eq(1)
  end

  it "should return 3 for '(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)'" do
    expect(overlapping_rectangles('(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)')).to eq(3)
  end

  it "should return 9 for '(-1,1),(2,1),(2,-2),(-1,-2),(-2,2),(3,2),(3,-3),(-2,-3)'" do
    expect(overlapping_rectangles('(-1,1),(2,1),(2,-2),(-1,-2),(-2,2),(3,2),(3,-3),(-2,-3)')).to eq(9)
  end

  it "should return 'No overlap' for '(0,0),(5,0),(0,2),(5,2),(0,0),(-5,0),(0,2),(-5,2)'" do
    expect(overlapping_rectangles('(0,0),(5,0),(0,2),(5,2),(0,0),(-5,0),(0,2),(-5,2)')).to eq('No overlap')
  end

  it "should return 'No overlap' for '(0,0),(5,0),(0,2),(5,2),(-1,-1),(-5,-1),(-1,3),(-5,3)'" do
    expect(overlapping_rectangles('(0,0),(5,0),(0,2),(5,2),(-1,-1),(-5,-1),(-1,3),(-5,3)')).to eq('No overlap')
  end
end
