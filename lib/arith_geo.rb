# frozen_string_literal: true

def arith_geo(arr)
  return 'Arithmetic' if test_array(arr, '-')
  return 'Geometric' if test_array(arr, '/')

  -1
end

def test_array(arr, operator)
  first = true
  constant = false
  prev_num = 0
  arr.each do |num|
    if first
      first = false
    # this is the first number in the array
    elsif !constant
      # this is the second number in the array
      constant = return_value(num, prev_num, operator)
    else
      difference = return_value(num, prev_num, operator)
      return false if difference != constant

      # if the constant changes then this is not a valid sequence

    end
    prev_num = num
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
