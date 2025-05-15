# frozen_string_literal: true

require 'hard/city_traffic'

#  An input parameter of an array of strings will be passed in.
#  The array will be a representation of an undirected graph in a form
#  similar to an adjacency list. Each element in the input will contain an
#  integer which will represent the population for that city, and then that will
#  be followed by a comma separated list of its neighboring cities and their
#  populations (these will be separated by a colon). For example: strArr may be
# *
# * ["1:[5]", "4:[5]", "3:[5]", "5:[1,4,3,2]", "2:[5,15,7]", "7:[2,8]",
# * "8:[7,38]", "15:[2]", "38:[8]"]. This graph then looks like the following
# * picture:
# *
# * [Image of cities graph](https://i.imgur.com/5xbQDUY.jpg)
# *
# * Each node represents the population of that city and each edge represents a
# * road to that city. Your goal is to determine the maximum traffic that would
# * occur via a single road if everyone decided to go to that city. For example:
# * if every single person in all the cities decided to go to city 7, then via
# * the upper road the number of people coming in would be (8 + 38) = 46. If all
# * the cities beneath city 7 decided to go to it via the lower road, the number
# * of people coming in would be (2 + 15 + 1 + 3 + 4 + 5) = 30. So the maximum
# * traffic coming into the city 7 would be 46 because the maximum value of (30,
# * 46) = 46.
# *
# * Your program should determine the maximum traffic for every single city and
# * return the answers in a comma separated string in the format:
# * city:max_traffic,city:max_traffic,... The cities should be outputted in
# * sorted order by the city number. For the above example, the output would
# * therefore be: 1:82,2:53,3:80,4:79,5:70,7:46,8:38,15:68,38:45. The cities will
# * all be unique positive integers and there will not be any cycles in the
# * graph. There will always be at least 2 cities in the graph.
# *#
describe CityTraffic do
  let(:ct) { described_class.new }

  describe 'city_traffic' do
    # it "returns '1:20,2:18,3:15,4:11,5:10,6:15' for ['1:[2]','2:[1,3]','3:[2,4]','4:[3,5]','5:[4,6]','6:[5]']" do
    #   expect(ct.city_traffic(['1:[2]', '2:[1,3]', '3:[2,4]', '4:[3,5]', '5:[4,6]',
    #                           '6:[5,7]', '7:[6,8]', '8:[7]'])).to eq('1:20,2:18,3:15,4:11,5:10,6:15')
    # end
    it "returns '1:20,2:18,3:15,4:11,5:10,6:15' for ['1:[2]','2:[1,3]','3:[2,4]','4:[3,5]','5:[4,6]','6:[5]']" do
      expect(ct.city_traffic(['1:[2]', '2:[1,3]', '3:[2,4]', '4:[3,5]', '5:[4,6]',
                              '6:[5]'])).to eq('1:20,2:18,3:15,4:11,5:10,6:15')
    end

    it "returns '1:14,2:12,3:9,4:6,5:10' for ['1:[2]','2:[1,3]','3:[2,4]','4:[3,5]','5:[4]']" do
      expect(ct.city_traffic(['1:[2]', '2:[1,3]', '3:[2,4]', '4:[3,5]', '5:[4]'])).to eq('1:14,2:12,3:9,4:6,5:10')
    end

    it "returns '1:9,2:7,3:4,4:6' for ['1:[2]','2:[1,3]','3:[2,4]','4:[3]']" do
      expect(ct.city_traffic(['1:[2]', '2:[1,3]', '3:[2,4]', '4:[3]'])).to eq('1:9,2:7,3:4,4:6')
    end

    it "returns '1:82,2:53,3:80,4:79,5:70,7:46,8:38,15:68,38:45' for
     ['1:[5]','4:[5]','3:[5]','5:[1,4,3,2]','2:[5,15,7]','7:[2,8]','8:[7,38]','15:[2]','38:[8]']" do
      expect(ct.city_traffic(['1:[5]', '4:[5]', '3:[5]', '5:[1,4,3,2]', '2:[5,15,7]', '7:[2,8]', '8:[7,38]', '15:[2]',
                              '38:[8]'])).to eq('1:82,2:53,3:80,4:79,5:70,7:46,8:38,15:68,38:45')
    end

    it "returns '1:14,2:13,3:12,4:11,5:4' for ['1:[5]', '2:[5]', '3:[5]', '4:[5]', '5:[1,2,3,4]']" do
      expect(ct.city_traffic(['1:[5]', '2:[5]', '3:[5]', '4:[5]', '5:[1,2,3,4]'])).to eq('1:14,2:13,3:12,4:11,5:4')
    end

    it "returns '1:44,2:25,3:30,4:41,5:20,12:33,18:27' for
    ['1:[5]', '2:[5,18]', '3:[5,12]', '4:[5]', '5:[1,2,3,4]', '18:[2]', '12:[3]']" do
      expect(ct.city_traffic(['1:[5]', '2:[5,18]', '3:[5,12]', '4:[5]', '5:[1,2,3,4]', '18:[2]',
                              '12:[3]'])).to eq('1:44,2:25,3:30,4:41,5:20,12:33,18:27')
    end

    it "returns '1:12,12:1' for ['1:[12]', '12:[1]']" do
      expect(ct.city_traffic(['1:[12]', '12:[1]'])).to eq('1:12,12:1')
    end

    it "returns '4:179,12:171,67:104,100:79' for ['4:[100]', '100:[4,67]', '67:[100,12]', '12:[67]']" do
      expect(ct.city_traffic(['4:[100]', '100:[4,67]', '67:[100,12]', '12:[67]'])).to eq('4:179,12:171,67:104,100:79')
    end

    it "returns '4:268,12:260,67:104,89:183,100:168' for
    ['4:[100]', '100:[4,67]', '67:[100,12,89]', '12:[67]', '89:[67]']" do
      expect(ct.city_traffic(['4:[100]', '100:[4,67]', '67:[100,12,89]', '12:[67]',
                              '89:[67]'])).to eq('4:268,12:260,67:104,89:183,100:168')
    end

    it "returns '4:195,12:281,82:211,90:105,105:188' for
    ['12:[4]', '82:[4]', '4:[12,82,90]', '90:[4,105]', '105:[90]']" do
      expect(ct.city_traffic(['12:[4]', '82:[4]', '4:[12,82,90]', '90:[4,105]',
                              '105:[90]'])).to eq('4:195,12:281,82:211,90:105,105:188')
    end

    it "returns '1:98,2:89,3:96,4:95,8:67,14:85,67:32' for
    ['1:[2]', '3:[2]', '4:[2]', '2:[1,3,4,8]', '8:[2,67,14]', '67:[8]','14:[8]']" do
      expect(ct.city_traffic(['1:[2]', '3:[2]', '4:[2]', '2:[1,3,4,8]', '8:[2,67,14]', '67:[8]',
                              '14:[8]'])).to eq('1:98,2:89,3:96,4:95,8:67,14:85,67:32')
    end

    it "returns '1:186,2:157,3:184,4:183,5:174,7:150,8:142,15:172,38:104,104:83' for
    ['1:[5]','4:[5]','3:[5]','5:[1,4,3,2]','2:[5,15,7]','7:[2,8]','8:[7,38]','15:[2]',
    '38:[8,104]','104:[38]']" do
      expected = '1:186,2:157,3:184,4:183,5:174,7:150,8:142,15:172,38:104,104:83'
      expect(ct.city_traffic(['1:[5]', '4:[5]', '3:[5]', '5:[1,4,3,2]', '2:[5,15,7]', '7:[2,8]',
                              '8:[7,38]', '15:[2]', '38:[8,104]', '104:[38]'])).to eq(expected)
    end

    it "returns '2:56,3:70,12:58,56:17' for ['56:[2]', '2:[56,12]', '3:[12]', '12:[2,3]]'" do
      expect(ct.city_traffic(['56:[2]', '2:[56,12]', '3:[12]', '12:[2,3]'])).to eq('2:56,3:70,12:58,56:17')
    end
  end
end
