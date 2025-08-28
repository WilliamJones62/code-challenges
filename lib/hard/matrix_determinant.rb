# frozen_string_literal: true

require 'matrix'

# This class contains matching couples logic
class MatrixDeterminant
  def matrix_determinant(array)
    format_matrix(array, [])
    @number_of_rows = @matrix.length
    return -1 unless matrix_valid

    if @number_of_rows > 3
      m = Matrix[*@matrix]
      return m.determinant
    end
    matrix_reverse
    load_plus_minus
    sum_array(@plus_arrays) - sum_array(@minus_arrays)
  end

  def format_matrix(array, row)
    @matrix = []
    array.each do |string|
      if string == '<>'
        @matrix << row
        row = []
      else
        row << string.to_i
      end
    end
    @matrix << row
  end

  def matrix_valid
    @matrix.each do |row|
      return false if row.length != @number_of_rows
    end
    true
  end

  def matrix_reverse
    @reverse_matrix = []
    @matrix.each do |row|
      @reverse_matrix << row.reverse
    end
  end

  def load_plus_minus
    @plus_arrays = []
    @minus_arrays = []
    case @number_of_rows
    when 2
      load_plus_minus2
    when 3
      load_plus_minus3
    end
  end

  def load_plus_minus2
    @plus_arrays << [@matrix[0][0], @matrix[1][1]]
    @minus_arrays << [@matrix[0][1], @matrix[1][0]]
  end

  def load_plus_minus3
    initialize_arrays
    @plus_arrays = load_arrays(@matrix, @plus_arrays)
    @minus_arrays = load_arrays(@reverse_matrix, @minus_arrays)
  end

  def initialize_arrays
    @number_of_rows.times do
      @plus_arrays << []
      @minus_arrays << []
    end
  end

  def load_arrays(matrix, arrays)
    k = l = 0
    (0..@number_of_rows - 1).each do |i|
      (0..@number_of_rows - 1).each do |j|
        arrays[k] << matrix[i][j]
        k = k == @number_of_rows - 1 ? 0 : k += 1
      end
      l = l.zero? ? @number_of_rows - 1 : l -= 1
      k = l
    end
    arrays
  end

  def sum_array(arrays)
    array_total = 1
    total = 0
    arrays.each do |array|
      array.each do |integer|
        array_total *= integer
      end
      total += array_total
      array_total = 1
    end
    total
  end
end
