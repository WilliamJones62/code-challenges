# frozen_string_literal: true

require 'hard/optimal_assignments'

# An array of strings represents an NxN matrix and it will be in the
# following format: ["(n,n,n...)","(...)",...] where the n's represent
# integers. This matrix represents a machine at row i performing a task at column
# j. The cost for this is matrix[i][j]. Your program should determine which
# machine should perform which task so as to minimize the whole cost and it
# should return the pairings of machines to tasks in the following format:
# (i-j)(...)... Only one machine can perform a task. For example: if the array
# is ["(5,4,2)","(12,4,3)","(3,4,13)"] then your program should return
# (1-3)(2-2)(3-1) because assigning the machines to these tasks gives the least
# cost. The matrix will range from 2x2 to 6x6, there will be no negative costs
# in the matrix, and there will always be a unique answer.

describe OptimalAssignments do
  let(:oa) { described_class.new }

  describe 'optimal_assignments' do
    it "returns '(1-3)(2-2)(3-1)' for '(5,4,2)', '(12,4,3)', '(3,4,13)']" do
      expect(oa.optimal_assignments(['(5,4,2)', '(12,4,3)', '(3,4,13)'])).to eq('(1-3)(2-2)(3-1)')
    end

    it "returns '(1-1)(2-2)(3-3)' for '(1,2,1)', '(4,1,5)', '(5,2,1)']" do
      expect(oa.optimal_assignments(['(1,2,1)', '(4,1,5)', '(5,2,1)'])).to eq('(1-1)(2-2)(3-3)')
    end

    it "returns '(1-2)(2-4)(3-3)(4-1)' for '(13,4,7,6)', '(1,11,5,4)', '(6,7,2,8)', '(1,3,5,9)']" do
      expect(oa.optimal_assignments(['(13,4,7,6)', '(1,11,5,4)', '(6,7,2,8)',
                                     '(1,3,5,9)'])).to eq('(1-2)(2-4)(3-3)(4-1)')
    end

    it "returns '(1-2)(2-3)(3-1)' for '(1,1,4)', '(5,2,1)', '(1,5,2)']" do
      expect(oa.optimal_assignments(['(1,1,4)', '(5,2,1)', '(1,5,2)'])).to eq('(1-2)(2-3)(3-1)')
    end

    it "returns '(1-1)(2-2)(3-3)' for '(1,1,2)', '(2,1,5)', '(1,5,1)']" do
      expect(oa.optimal_assignments(['(1,1,2)', '(2,1,5)', '(1,5,1)'])).to eq('(1-1)(2-2)(3-3)')
    end

    it "returns '(1-2)(2-1)' for '(1,4)', '(5,18)']" do
      expect(oa.optimal_assignments(['(1,4)', '(5,18)'])).to eq('(1-2)(2-1)')
    end

    it "returns '(1-1)(2-2)' for '(1,2)', '(1,1)']" do
      expect(oa.optimal_assignments(['(1,2)', '(1,1)'])).to eq('(1-1)(2-2)')
    end

    it "returns '(1-4)(2-1)(3-3)(4-2)' for '(13,2,7,1)', '(1,2,3,4)', '(6,7,2,3)', '(67,4,8,18)']" do
      expect(oa.optimal_assignments(['(13,2,7,1)', '(1,2,3,4)', '(6,7,2,3)',
                                     '(67,4,8,18)'])).to eq('(1-4)(2-1)(3-3)(4-2)')
    end

    it "returns '(1-4)(2-2)(3-3)(4-1)' for '(1,14,2,4)', '(5,1,4,15)', '(1,5,2,7)', '(1,4,7,17)']" do
      expect(oa.optimal_assignments(['(1,14,2,4)', '(5,1,4,15)', '(1,5,2,7)',
                                     '(1,4,7,17)'])).to eq('(1-4)(2-2)(3-3)(4-1)')
    end

    it "returns '(1-2)(2-3)(3-4)(4-1)(5-5)' for '(90,75,75,80,82)', '(35,85,20,50,41)', '(40,2,24,1,67)',
                                                '(4,70,2,11,23)', '(23,25,56,44,21)']" do
      expect(oa.optimal_assignments(['(90,75,75,80,82)', '(35,85,20,50,41)', '(40,2,24,1,67)', '(4,70,2,11,23)',
                                     '(23,25,56,44,21)'])).to eq('(1-2)(2-3)(3-4)(4-1)(5-5)')
    end
  end
end
