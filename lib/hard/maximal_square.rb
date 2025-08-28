# frozen_string_literal: true

# This class contains maximal square logic
class MaximalSquare
  def maximal_square(string_array)
    initialize_variables(string_array)
    load_side_store(0, 0)
    @side_store.values.max**2
  end

  def initialize_variables(string_array)
    @row_length = string_array.length
    @column_length = string_array.first.length
    @array = []
    string_array.each do |string|
      @array << string.chars
    end
    @side_store = {}
  end

  def load_side_store(row, column)
    key = [row, column].join
    return 0 if row >= @row_length || column >= @column_length

    unless @side_store.key?(key)
      below = load_side_store(row + 1, column)
      beside = load_side_store(row, column + 1)
      across = load_side_store(row + 1, column + 1)
      @side_store[key] = @array.dig(row, column) == '1' ? [below, beside, across].min + 1 : 0
    end
    @side_store[key]
  end
end
