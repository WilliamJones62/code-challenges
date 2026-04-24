# frozen_string_literal: true

require 'medium/second_highest'

# Table: Employee

# +-------------+------+
# | Column Name | Type |
# +-------------+------+
# | id          | int  |
# | salary      | int  |
# +-------------+------+
# id is the primary key (column with unique values) for this table.
# Each row of this table contains information about the salary of an employee.
 

# Write a solution to find the second highest distinct salary from the Employee table. If there is no second highest salary, return null (return None in Pandas).

# The result format is in the following example.

 

# Example 1:

# Input: 
# Employee table:
# +----+--------+
# | id | salary |
# +----+--------+
# | 1  | 100    |
# | 2  | 200    |
# | 3  | 300    |
# +----+--------+
# Output: 
# +---------------------+
# | SecondHighestSalary |
# +---------------------+
# | 200                 |
# +---------------------+
# Example 2:

# Input: 
# Employee table:
# +----+--------+
# | id | salary |
# +----+--------+
# | 1  | 100    |
# +----+--------+
# Output: 
# +---------------------+
# | SecondHighestSalary |
# +---------------------+
# | nil                |
# +---------------------+

describe SecondHighest do
  let(:s4) { described_class.new }

  describe 'second_highest' do
    it "returns 200 for [[1,100], [2,200], [3,300]]" do
        expect(s4.second_highest([[1,100], [2,200], [3,300]])).to eq(200)
    end
    it "returns nil for [[1,100], [2,300], [3,300]]" do
        expect(s4.second_highest([[1,100], [2,300], [3,300]])).to eq(nil)
    end
    it "returns 100 for [[1,400], [1,100], [2,300], [3,300]]" do
        expect(s4.second_highest([[1,400], [1,100], [2,300], [3,300]])).to eq(100)
    end
    it "returns nil for [[1,100], [2,200], [3,200]]" do
        expect(s4.second_highest([[1,100], [2,200], [3,200]])).to eq(nil)
    end
    it "returns null for [[1,100]]" do
        expect(s4.second_highest([[1,100]])).to eq(nil)
    end
  end
end
