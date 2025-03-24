# frozen_string_literal: true

require 'counting_minutes'

# Return the number of minutes between two times.
# Strings are formatted with a colon and am or pm separated by a hyphen.

describe 'counting_minutes' do
  it "should return 60 for '9:00am-10:00am'" do
    expect(counting_minutes('9:00am-10:00am')).to eq(60)
  end

  it "should return 690 for '12:30pm-12:00am'" do
    expect(counting_minutes('12:30pm-12:00am')).to eq(690)
  end

  it "should return 1425 for '1:23am-1:08am' " do
    expect(counting_minutes('1:23am-1:08am')).to eq(1425)
  end
end
