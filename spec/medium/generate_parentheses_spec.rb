# frozen_string_literal: true

require 'medium/generate_parentheses'

# Given n pairs of parentheses, write a function to generate all combinations of 
# well-formed parentheses.

# Example 1:

# Input: n = 3
# Output: ["((()))","(()())","(())()","()(())","()()()"]

# Example 2:

# Input: n = 1
# Output: ["()"]

describe GenerateParentheses do
  let(:gp) { described_class.new }

  describe 'generate_parentheses' do
    it "returns ['((()))','(()())','(())()','()(())','()()()'] for 3" do
        expect(gp.generate_parentheses(3)).to eq(['((()))','(()())','(())()','()(())','()()()'])
    end
    it "returns ['(())', '()()'] for 2" do
        expect(gp.generate_parentheses(2)).to eq(['(())', '()()'])
    end
    it "returns ['()'] for 1" do
        expect(gp.generate_parentheses(1)).to eq(['()'])
    end
    it "returns array for 4" do
        expect(gp.generate_parentheses(4)).to eq( ["(((())))", "((()()))", "((())())", "((()))()", "(()(()))", "(()()())", "(()())()", "(())(())", "(())()()", "()((()))", "()(()())", "()(())()", "()()(())", "()()()()"])
    end
  end
end