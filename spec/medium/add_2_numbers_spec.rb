# frozen_string_literal: true

require 'medium/add_2_numbers'

# You are given two non-empty linked lists representing two 
# non-negative integers. The digits are stored in reverse order, 
# and each of their nodes contains a single digit. Add the two 
# numbers and return the sum as a linked list.

# You may assume the two numbers do not contain any leading zero, 
# except the number 0 itself.

describe Add2Numbers do
  let(:an) { described_class.new }

  describe 'add_2_numbers' do
    it "returns [7,0,8] for [2,4,3], [5,6,4]" do
        expect(an.add_2_numbers([2,4,3], [5,6,4])).to eq([7,0,8])
    end
    it "returns [0] for [0], [0]" do
        expect(an.add_2_numbers([0], [0])).to eq([0])
    end
    it "returns [8,9,9,9,0,0,0,1] for [9,9,9,9,9,9,9], [9,9,9,9]" do
      expect(an.add_2_numbers([9,9,9,9,9,9,9], [9,9,9,9])).to eq([8,9,9,9,0,0,0,1])
    end
  end
end