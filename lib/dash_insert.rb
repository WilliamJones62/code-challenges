# frozen_string_literal: true

def dash_insert(int)
  arr = int.digits.reverse
  prev_digit = false
  string_arr = []
  arr.each do |i|
    string_arr.push(compare_digits(i, prev_digit)) if prev_digit
    string_arr.push(i.to_s)
    prev_digit = i
  end
  string_arr.join.force_encoding('UTF-8')
end

def compare_digits(digit, prev_digit)
  char = ''
  if digit.odd? && prev_digit.odd?
    char = '-'
  elsif digit.even? && prev_digit.even?
    char = '*'
  end
  char
end
