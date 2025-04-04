# frozen_string_literal: true

# This class contains triple double logic
class TripleDouble
  def triple_double(integer1, integer2)
    array1 = integer1.digits
    array2 = integer2.digits
    numbers1_array = create_numbers_array(array1, 3, [array1[0]], [])
    numbers2_array = create_numbers_array(array2, 2, [array2[0]], [])
    numbers1_array.each do |num1|
      numbers2_array.each do |num2|
        return 1 if num1[0] == num2[0]
      end
    end
    0
  end

  def create_numbers_array(array, run_count, digit_array, numbers_array)
    (1..array.length - 1).each do |i|
      if array[i] == digit_array[0]
        digit_array.push(array[i])
      else
        numbers_array = update_numbers_array(digit_array, numbers_array, run_count)
        digit_array = [array[i]]
      end
    end
    numbers_array = update_numbers_array(digit_array, numbers_array, run_count)
  end

  def update_numbers_array(digit_array, numbers_array, run_count)
    numbers_array.push(digit_array.join) if digit_array.length >= run_count
    numbers_array
  end
end
