# frozen_string_literal: true

def prime_checker(integer)
  integer_array = convert_int_to_arr(integer)
  permutation_array = integer_array.permutation(integer_array.length).to_a
  permutation_array.each do |arr|
    num = arr.join.to_i

    return 1 if prime?(num)
  end
  0
end

def convert_int_to_arr(integer)
  array = []

  char_array = integer.to_s.chars
  char_array.each { |x| array << x.to_i }
  array.reverse!
end

def prime?(num)
  n = 2
  while n < num
    return false if (num % n).zero?

    n += 1
  end
  true
end
