# frozen_string_literal: true

require 'hard/gas_station'

# An array parameter contains strings. The first string will contain the number of
# gas stations in a circular route. Each subsequent element will be the string g:c
# where g is the amount of gas in gallons at that gas station and c will be the
# amount of gallons of gas needed to get to the following gas station. For example
# the array may be: ["4","3:1","2:2","1:2","0:1"]. Return the index of the
# starting gas station that will allow travel around the whole route
# once, otherwise return the string 'impossible'. For the example above, there
# are 4 gas stations, and the program should return the string '1' because
# starting at station 1 3 gallons of gas are received and 1 is spent getting to the
# next station, and so on. Starting at any other gas station would make getting
# around the route impossible, so the answer is 1. If there are multiple gas stations
# that are possible to start at, return the smallest index (of the gas station). N will
# always be greater than 2.

describe GasStation do
  let(:gs) { described_class.new }

  describe 'gas_station' do
    it "returns 'impossible' for ['4', '1:1', '2:2', '1:2', '0:1']" do
      expect(gs.gas_station(['4', '1:1', '2:2', '1:2', '0:1'])).to eq('impossible')
    end

    it "returns '4' for ['4', '0:1', '2:2', '1:2', '3:1']" do
      expect(gs.gas_station(['4', '0:1', '2:2', '1:2', '3:1'])).to eq('4')
    end

    it "returns 'impossible' for ['4', '0:1', '2:2', '1:2', '1:1']" do
      expect(gs.gas_station(['4', '0:1', '2:2', '1:2', '1:1'])).to eq('impossible')
    end

    it "returns '2' for ['3', '2:3', '2:1', '4:4']" do
      expect(gs.gas_station(['3', '2:3', '2:1', '4:4'])).to eq('2')
    end

    it "returns '3' for ['5', '3:3', '1:2', '2:2', '3:2', '4:3']" do
      expect(gs.gas_station(['5', '3:3', '1:2', '2:2', '3:2', '4:3'])).to eq('3')
    end

    it "returns '2' for ['5', '0:1', '2:1', '3:2', '4:6', '4:3']" do
      expect(gs.gas_station(['5', '0:1', '2:1', '3:2', '4:6', '4:3'])).to eq('2')
    end

    it "returns '2' for ['2', '1:2', '3:2']" do
      expect(gs.gas_station(['2', '1:2', '3:2'])).to eq('2')
    end

    it "returns 'impossible' for ['2', '1:2', '1:2']" do
      expect(gs.gas_station(['2', '1:2', '1:2'])).to eq('impossible')
    end

    it "returns '1' for ['6', '3:2', '2:2', '10:6', '0:4', '1:1', '30:10']" do
      expect(gs.gas_station(['6', '3:2', '2:2', '10:6', '0:4', '1:1', '30:10'])).to eq('1')
    end

    it "returns '4' for ['5', '2:3', '2:3', '2:3', '500:1', '0:495']" do
      expect(gs.gas_station(['5', '2:3', '2:3', '2:3', '500:1', '0:495'])).to eq('4')
    end
  end
end
