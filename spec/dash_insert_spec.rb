# frozen_string_literal: true

require 'dash_insert'

# Insert dashes between odd digits.
# Insert asterisks between even digits.

describe 'dash_insert' do
  it "should return '454*67-9-3' for 4546793" do
    expect(dash_insert(4_546_793)).to eq('454*67-9-3')
  end

  it "should return '9-9-94*6' for 99946" do
    expect(dash_insert(99_946)).to eq('9-9-94*6')
  end

  it "should return '56*6*47-304' for 56647304" do
    expect(dash_insert(56_647_304)).to eq('56*6*47-30*4')
  end
end
