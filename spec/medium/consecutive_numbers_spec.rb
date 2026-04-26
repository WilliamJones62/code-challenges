# frozen_string_literal: true

require 'medium/consecutive_numbers'

# Table: Logs

# +-------------+---------+
# | Column Name | Type    |
# +-------------+---------+
# | id          | int     |
# | num         | varchar |
# +-------------+---------+
# In SQL, id is the primary key for this table.
# id is an autoincrement column starting from 1.
 

# Find all numbers that appear at least three times consecutively.

# Return the result table in any order.

# The result format is in the following example.

 

# Example 1:

# Input: 
# Logs table:
# +----+-----+
# | id | num |
# +----+-----+
# | 1  | 1   |
# | 2  | 1   |
# | 3  | 1   |
# | 4  | 2   |
# | 5  | 1   |
# | 6  | 2   |
# | 7  | 2   |
# +----+-----+
# Output: 
# +-----------------+
# | ConsecutiveNums |
# +-----------------+
# | 1               |
# +-----------------+
# Explanation: 1 is the only number that appears consecutively for at least three times.

describe ConsecutiveNumbers do
  let(:s4) { described_class.new }

  describe 'consecutive_numbers' do
    it "returns [1] for [[1,1], [2,1], [3,1], [4,2], [5,1], [6,2], [7,2]]" do
        expect(s4.consecutive_numbers([[1,1], [2,1], [3,1], [4,2], [5,1], [6,2], [7,2]])).to eq([1])
    end
    it "returns [1,2] for [[1,1], [2,1], [3,1], [4,2], [5,2], [6,2], [7,2]]" do
        expect(s4.consecutive_numbers([[1,1], [2,1], [3,1], [4,2], [5,2], [6,2], [7,2]])).to eq([1,2])
    end
  end
end
