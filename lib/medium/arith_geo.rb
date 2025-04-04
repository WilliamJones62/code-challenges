# frozen_string_literal: true

# This class contains arithmetic and geometric validation logic
class ArithGeo
  def arith_geo(arr)
    return 'Arithmetic' if test_array(arr, '-')
    return 'Geometric' if test_array(arr, '/')

    -1
  end

  def test_array(arr, operator)
    constant = return_value(arr[1], arr[0], operator)
    (2..(arr.length - 1)).each do |i|
      difference = return_value(arr[i], arr[i - 1], operator)
      return false if difference != constant
    end
    true
  end

  def return_value(num, prev_num, operator)
    if operator == '-'
      num - prev_num
    else
      num / prev_num
    end
  end
end
