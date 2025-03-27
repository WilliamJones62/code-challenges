# frozen_string_literal: true

LOWERCASE = ('a'..'z')
NUMERIC = ('0'..'9')

def number_search(string)
  number = total_number = letter_count = 0
  string.chars.each do |char|
    number, total_number, letter_count = process_char(char, number, total_number, letter_count)
  end
  return_value(number, total_number, letter_count)
end

def process_char(char, number, total_number, letter_count)
  if NUMERIC.include?(char)
    number = update_number(number, char)
  elsif LOWERCASE.include?(char.downcase)
    letter_count += 1
    number, total_number = add_number_to_total(number, total_number) if number.positive?
  elsif number.positive?
    number, total_number = add_number_to_total(number, total_number)
  end
  [number, total_number, letter_count]
end

def update_number(number, char)
  if number.positive?
    number *= 10
    number += char.to_i
  else
    number = char.to_i
  end
  number
end

def add_number_to_total(number, total_number)
  total_number += number
  number = 0
  [number, total_number]
end

def return_value(number, total_number, letter_count)
  total_number += number if number.positive?
  return 'No letters in string' if letter_count.zero?

  (total_number.to_f / letter_count).round
end
