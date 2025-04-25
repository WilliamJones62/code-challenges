# frozen_string_literal: true

require 'matrix'

# This class contains matching couples logic
class MatrixDeterminant
  def matrix_determinant(array)
    matrix = format_matrix(array, [], [])
    number_of_rows = matrix.length
    return -1 unless matrix_valid(matrix, number_of_rows)

    if number_of_rows > 3
      m = Matrix[*matrix]
      return m.determinant
    end
    reverse_matrix = matrix_reverse(matrix)
    plus_arrays, minus_arrays = load_plus_minus(matrix, reverse_matrix, number_of_rows, [], [])
    sum_array(plus_arrays, 1) - sum_array(minus_arrays, 1)
  end

  def format_matrix(array, matrix, row)
    array.each do |string|
      if string == '<>'
        matrix << row
        row = []
      else
        row << string.to_i
      end
    end
    matrix << row
  end

  def matrix_valid(matrix, number_of_rows)
    matrix.each do |row|
      return false if row.length != number_of_rows
    end
    true
  end

  def matrix_reverse(matrix)
    reverse_matrix = []
    matrix.each do |row|
      reverse_matrix << row.reverse
    end
    reverse_matrix
  end

  def load_plus_minus(matrix, reverse_matrix, number_of_rows, plus_arrays, minus_arrays)
    case number_of_rows
    when 2
      plus_arrays << [matrix[0][0], matrix[1][1]]
      minus_arrays << [matrix[0][1], matrix[1][0]]
    when 3
      plus_arrays, minus_arrays = initialize_arrays(number_of_rows, plus_arrays, minus_arrays)
      plus_arrays = load_arrays(matrix, number_of_rows, plus_arrays)
      minus_arrays = load_arrays(reverse_matrix, number_of_rows, minus_arrays)
    end
    [plus_arrays, minus_arrays]
  end

  def initialize_arrays(number_of_rows, plus_arrays, minus_arrays)
    number_of_rows.times do
      plus_arrays << []
      minus_arrays << []
    end
    [plus_arrays, minus_arrays]
  end

  def load_arrays(matrix, number_of_rows, arrays)
    k = l = 0
    (0..number_of_rows - 1).each do |i|
      (0..number_of_rows - 1).each do |j|
        arrays[k] << matrix[i][j]
        k = k == number_of_rows - 1 ? 0 : k += 1
      end
      l = l.zero? ? number_of_rows - 1 : l -= 1
      k = l
    end
    arrays
  end

  def sum_array(arrays, array_total)
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
