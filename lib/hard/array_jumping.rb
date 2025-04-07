# frozen_string_literal: true

# This class contains array jumping logic
class ArrayJumping
  def array_jumping(array)
    visited, array_length, max_index, jump_array, jump_count = initialize_variables(array)

    until jump_array.empty?
      next_jump_array = []
      jump_array.each do |j|
        next_moves = calculate_next_moves(j, array, array_length)
        back_to_start, visited, next_jump_array = process_next_moves(next_moves, max_index, visited, next_jump_array)
        return jump_count if back_to_start
      end

      jump_count, jump_array = update_variables(jump_count, next_jump_array)
    end
    -1
  end

  def initialize_variables(array)
    visited = []
    (0..array.length - 1).each do |_i|
      visited.push(false)
    end
    array_length = array.length
    max_index = array.index(array.max)
    visited[max_index] = true
    jump_array = [array.index(array.max)]
    jump_count = 1

    [visited, array_length, max_index, jump_array, jump_count]
  end

  def update_variables(jump_count, next_jump_array)
    jump_count += 1
    jump_array = next_jump_array
    [jump_count, jump_array]
  end

  def calculate_next_moves(jump_index, array, array_length)
    next_moves = []
    jump = array[jump_index]
    next_moves.push(jump_index - jump)
    next_moves[0] = array_length + next_moves[0] if next_moves[0].negative?
    next_moves.push(jump_index + jump)
    next_moves[1] = next_moves[1] % array_length if next_moves[1] > array_length
    next_moves
  end

  def process_next_moves(next_moves, max_index, visited, next_jump_array)
    next_moves.each do |n|
      return true if n == max_index

      visited, next_jump_array = load_next_jump_array(visited, next_jump_array, n)
    end
    [false, visited, next_jump_array]
  end

  def load_next_jump_array(visited, next_jump_array, next_move)
    unless visited[next_move]
      visited[next_move] = true
      next_jump_array.push(next_move)
    end
    [visited, next_jump_array]
  end
end
