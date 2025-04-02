# frozen_string_literal: true

require 'most_free_time'

# Take an array of strings.
# The format of each event will be hh:mmAM/PM-hh:mmAM/PM.
# Output the longest amount of free time available.
# Free time is between the end of the first event and the start of the last.
# Return value must be in the format: 'hh:mm'.

describe MostFreeTime do
  let(:mft) { described_class.new }

  describe 'most_free_time' do
    it "returns '00:30' for ['12:15PM-02:00PM', '09:00AM-10:00AM', '10:30AM-12:00PM', '02:29pm-4:00PM']" do
      expect(mft.most_free_time(['12:15PM-02:00PM', '09:00AM-10:00AM', '10:30AM-12:00PM',
                                 '02:29pm-4:00PM'])).to eq('00:30')
    end

    it "returns '00:04' for ['12:15PM-02:00PM', '09:00AM-12:11PM', '02:02PM-04:00PM', '04:03PM-12:02AM']" do
      expect(mft.most_free_time(['12:15PM-02:00PM', '09:00AM-12:11PM', '02:02PM-04:00PM',
                                 '04:03PM-12:02AM'])).to eq('00:04')
    end
  end
end
