class SudokuSolver
    def sudoku_solver(board)
      # Make a deep copy to avoid modifying the original board
      board = board.map(&:dup)
      solve_helper(board) ? board : nil
    end
  
    private
  
    def solve_helper(board)
      # Find the next empty cell
      empty_cell = find_empty_cell(board)
      return true if empty_cell.nil? # No empty cells left, puzzle solved
  
      row, col = empty_cell
  
      # Try numbers 1-9
      (1..9).each do |num|
        if valid_placement?(board, row, col, num.to_s)
          board[row][col] = num.to_s
          
          # Recursively solve the rest of the board
          return true if solve_helper(board)
          
          # Backtrack if this number doesn't lead to a solution
          board[row][col] = '.'
        end
      end
  
      false # No valid number found for this cell
    end
  
    def find_empty_cell(board)
      (0..8).each do |row|
        (0..8).each do |col|
          return [row, col] if board[row][col] == '.'
        end
      end
      nil
    end
  
    def valid_placement?(board, row, col, num)
      # Check row
      return false if board[row].include?(num)
  
      # Check column
      (0..8).each do |r|
        return false if board[r][col] == num
      end
  
      # Check 3x3 sub-box
      box_row = (row / 3) * 3
      box_col = (col / 3) * 3
      
      (box_row...box_row + 3).each do |r|
        (box_col...box_col + 3).each do |c|
          return false if board[r][c] == num
        end
      end
  
      true
    end
  end
  
  # Usage example and test
  def print_board(board)
    board.each_with_index do |row, i|
      puts row.join(' ')
      puts if (i + 1) % 3 == 0 && i < 8
    end
  end
  