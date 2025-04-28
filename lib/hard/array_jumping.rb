# frozen_string_literal: true

# This class contains array jumping logic
class ArrayJumping
  @max_index = 0
  def array_jumping(array)
    @array = array
    initialize_variables
    process_jumps
  end

  def process_jumps
    until @jump_array.empty?
      @next_jump_array = []
      @jump_array.each do |j|
        calculate_next_moves(j)
        return @jump_count if process_next_moves
      end

      update_variables
    end
    -1
  end

  def initialize_variables
    @visited = []
    @array.length.times do
      @visited << false
    end

    @array_length = @array.length
    @max_index = @array.index(@array.max)
    @visited[@max_index] = true
    @jump_array = [@array.index(@array.max)]
    @jump_count = 1
  end

  def update_variables
    @jump_count += 1
    @jump_array = @next_jump_array
  end

  def calculate_next_moves(jump_index)
    @next_moves = []
    jump = @array[jump_index]
    @next_moves.push(jump_index - jump)
    @next_moves[0] = @array_length + @next_moves[0] if @next_moves[0].negative?
    @next_moves.push(jump_index + jump)
    @next_moves[1] = @next_moves[1] % @array_length if @next_moves[1] > @array_length
  end

  def process_next_moves
    @next_moves.each do |n|
      return true if n == @max_index

      load_next_jump_array(n)
    end
    false
  end

  def load_next_jump_array(next_move)
    return if @visited[next_move]

    @visited[next_move] = true
    @next_jump_array.push(next_move)
  end
end
