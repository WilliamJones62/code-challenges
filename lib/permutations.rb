# frozen_string_literal: true

# This class contains permutations logic
class Permutations
  def permutations(integer)
    array = convert_int_to_arr(integer)
    index, array = find_and_swap_elements(array)
    array = sort_trailing_digits(index, array) if index.positive?
    return_integer = convert_arr_to_int(array)
    return -1 if integer == return_integer

    return_integer
  end

  def convert_int_to_arr(integer)
    array = []

    char_array = integer.to_s.chars
    char_array.each { |x| array << x.to_i }
    array.reverse!
  end

  def find_and_swap_elements(array)
    index = 0
    (0..array.length - 2).each do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      index = i
      break
    end
    [index, array]
  end

  def sort_trailing_digits(index, array)
    sorted_fragment = array[0..index].sort.reverse
    (0..index).each do |i|
      array[i] = sorted_fragment[i]
    end
    array
  end

  def convert_arr_to_int(array)
    array.reverse!
    array.join.to_i
  end
end
