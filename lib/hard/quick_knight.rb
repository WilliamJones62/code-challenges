# frozen_string_literal: true

# This class contains quick knight logic
class QuickKnight
  def quick_knight(string)
    @locations = string.scan(/\d/).map(&:to_i)
    initialize_variables
    process_moves
    @count
  end

  def initialize_variables
    @visited = [[]]
    initialize_visited
    @moves = [[@locations[0], @locations[1]]]
    @target = [@locations[2], @locations[3]]
    @count = 1
    @knight_moves = [[-2, 1], [-2, -1], [-1, 2], [-1, -2], [1, 2], [1, -2], [2, 1], [2, -1]]
  end

  def initialize_visited
    (0..8).each do |row|
      @visited << []
      9.times do
        @visited[row] << false
      end
    end
  end

  def process_moves
    until @moves.empty?
      possible_moves = load_possible_moves
      next_moves = []

      possible_moves.each do |possible_move|
        if !invalid_next_move?(possible_move) && !@visited[possible_move[0]][possible_move[1]]
          next_moves << possible_move
        end
      end
      test_for_target(next_moves)
    end
  end

  def load_possible_moves
    possible_moves = []
    @moves.each do |move|
      @visited[move[0]][move[1]] = true
      @knight_moves.each do |km|
        possible_moves << [move[0] + km[0], move[1] + km[1]]
      end
    end
    possible_moves
  end

  def invalid_next_move?(next_move)
    return true if next_move[0] > 8 || next_move[0] < 1 || next_move[1] > 8 || next_move[1] < 1

    false
  end

  def test_for_target(next_moves)
    if next_moves.include?(@target)
      @moves = []
    else
      @moves = next_moves
      @count += 1
    end
  end
end
