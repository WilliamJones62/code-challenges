# frozen_string_literal: true

# This class contains swap logic
class Swap
  NUMERIC = ('0'..'9')
  def swap(string)
    swap_array = string.swapcase.chars
    index_array = []
    (0..swap_array.length - 1).each do |i|
      next unless NUMERIC.include?(swap_array[i])

      index_array.push(i)
      next unless index_array.length == 2

      index_array, swap_array = process_between_numbers(index_array, string, swap_array)
    end
    swap_array.join
  end

  def process_between_numbers(index_array, string, swap_array)
    if (index_array[1] - index_array[0]) < 2 || !valid_chars(string, index_array)
      index_array.shift
    else
      index_array, swap_array = swap_numbers(index_array, swap_array)
    end
    [index_array, swap_array]
  end

  def swap_numbers(index_array, swap_array)
    first_number = swap_array[index_array[0]]
    swap_array[index_array[0]] = swap_array[index_array[1]]
    swap_array[index_array[1]] = first_number
    index_array = []
    [index_array, swap_array]
  end

  def valid_chars(string, index_array)
    between_numbers = string[index_array[0] + 1..index_array[1] - 1]
    return true if between_numbers.count('a-zA-Z') == between_numbers.length

    false
  end
end
