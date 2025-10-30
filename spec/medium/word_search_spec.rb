# frozen_string_literal: true BUM

require 'medium/word_search'

# Given an m x n grid of characters board and a string word, return true 
# if word exists in the grid.

# The word can be constructed from letters of sequentially adjacent cells, 
# where adjacent cells are horizontally or vertically neighboring. The 
# same letter cell may not be used more than once.

# Example 1:
# Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], 
# word = "ABCCED"
# Output: true

# Example 2:
# Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], 
# word = "SEE"
# Output: true

# Example 3:
# Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], 
# word = "ABCB"
# Output: false

describe WordSearch do
  let(:ws) { described_class.new }

  describe 'word_search' do
    it "returns true for [['A','B','C','E'],['S','F','C','S'],['A','D','E','E']], 'ABCCED'" do
        expect(ws.word_search([['A','B','C','E'],['S','F','C','S'],['A','D','E','E']], 'ABCCED')).to eq(true)
    end
    it "returns true for [['A','B','C','E'],['S','F','C','S'],['A','D','E','E']], 'SEE'" do
        expect(ws.word_search([['A','B','C','E'],['S','F','C','S'],['A','D','E','E']], 'SEE')).to eq(true)
    end
    it "returns false for [['A','B','C','E'],['S','F','C','S'],['A','D','E','E']], 'ABCB'" do
        expect(ws.word_search([['A','B','C','E'],['S','F','C','S'],['A','D','E','E']], 'ABCB')).to eq(false)
    end
    it "returns true for [['A','B','C','E'],['A','F','C','Q'],['A','E','E','S']], 'SEE'" do
        expect(ws.word_search([['A','B','C','E'],['A','F','C','Q'],['A','E','E','S']], 'SEE')).to eq(true)
    end
    it "returns true for [['p','p','p','E'],['S','F','C','B'],['p','p','D','A']], 'ABCB'" do
        expect(ws.word_search([['p','p','p','E'],['S','F','C','B'],['p','p','D','A']], 'ABCB')).to eq(false)
    end
  end
end