# frozen_string_literal: true

def run_length(string)
  reverse_array = string.reverse.chars
  prev_char = reverse_array.first
  prev_count = i = 1
  return_array = []
  until i == reverse_array.length
    reverse_array, return_array, prev_char, prev_count, i = process_reverse_array(reverse_array, return_array,
                                                                                  prev_char, prev_count, i)
  end
  return_array = update_return_array(return_array, prev_char, prev_count)

  return_array.join.reverse
end

def process_reverse_array(reverse_array, return_array, prev_char, prev_count, int)
  if reverse_array[int] == prev_char
    prev_count += 1
  else
    return_array = update_return_array(return_array, prev_char, prev_count)

    prev_char = reverse_array[int]
    prev_count = 1
  end
  int += 1
  [reverse_array, return_array, prev_char, prev_count, int]
end

def update_return_array(return_array, prev_char, prev_count)
  return_array.push(prev_char)
  return_array.push(prev_count.to_s)
end
