# frozen_string_literal: true

# This class contains tetris nove logic
class TetrisMove
  SHAPES = { 'I' => [2, 4, [[true], [true], [true], [true]]],
             'J' => [4, 3, [[true, false], [true, false], [true, true]]],
             'L' => [4, 3, [[true, true], [true, false], [true, false]]],
             'O' => [1, 2, [[true, true], [true, true]]],
             'S' => [2, 2, [[true, true, false], [false, true, true]]],
             'T' => [4, 2, [[false, true, false], [true, true, true]]],
             'Z' => [2, 2, [[false, true, true], [true, true, false]]] }.freeze

  def tetris_move(array)
    @array = array
    initialize_variables
    find_max_completed_rows
    @completed_rows
  end

  def initialize_variables
    @rotations, @max_completed, @shape = SHAPES[@array[0]]
    @shape_rotations = []
    @rotations.times { load_shape_rotations }
    load_board
    @completed_rows = 0
  end

  def load_shape_rotations
    rotated_shape = @shape.transpose.map(&:reverse)
    @shape_rotations << rotated_shape
    @shape = rotated_shape
  end

  def load_board
    @board = []
    @board << []
    (1..4).each do |row|
      @board << []
      (1...@array.length).each do |column|
        @board[row].push @array[column].to_i >= row
      end
    end
  end

  def find_max_completed_rows
    (0..11).each do |column|
      next if @board[1][column]

      @rotations.times do |rotation|
        shape_start = find_shape_start(rotation)
        next unless !shape_outside_board?(column, shape_start,
                                          @shape_rotations[rotation][0].length) && shape_fits?(column, rotation,
                                                                                               shape_start)

        update_completed_row_count
      end
    end
  end

  def shape_fits?(column, rotation, shape_start)
    board_copy_row, board_copy_column = reset_board_variables(column, shape_start)
    (0...@shape_rotations[rotation].length).each do |shape_row|
      (0...@shape_rotations[rotation][0].length).each do |shape_column|
        return false if board_square_occupied(rotation, shape_row, shape_column, board_copy_row, board_copy_column)

        @board_copy[board_copy_row][board_copy_column] = true if @shape_rotations.dig(rotation, shape_row, shape_column)

        board_copy_column += 1
      end
      board_copy_row, board_copy_column = update_board_variables(board_copy_row, column, shape_start)
    end

    true
  end

  def update_board_variables(board_copy_row, column, shape_start)
    board_copy_row += 1
    board_copy_column = column - shape_start
    [board_copy_row, board_copy_column]
  end

  def find_shape_start(rotation)
    (0...@shape_rotations[rotation][0].length).each do |j|
      return j if @shape_rotations[rotation][0][j]
    end
  end

  def shape_outside_board?(column, shape_start, shape_width)
    return true if column < shape_start || (11 - column) < (shape_start - shape_width)

    false
  end

  def board_square_occupied(rotation, shape_row, shape_column, board_copy_row, board_copy_column)
    return true if @shape_rotations[rotation][shape_row][shape_column] && @board_copy[board_copy_row][board_copy_column]

    false
  end

  def reset_board_variables(column, shape_start)
    @board_copy = []
    @board.each { |e| @board_copy << e.dup }
    board_copy_row = 1
    board_copy_column = column - shape_start
    [board_copy_row, board_copy_column]
  end

  def update_completed_row_count
    rotation_completed_rows = 0
    (1..@max_completed).each do |row|
      next unless @board_copy[row].all?

      rotation_completed_rows += 1
    end
    @completed_rows = rotation_completed_rows if rotation_completed_rows > @completed_rows
  end
end
