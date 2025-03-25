# frozen_string_literal: true

CLOSEBRACKETS = ['}', ']', ')'].freeze
OPENBRACKETS = ['{', '[', '('].freeze

def brackets(string)
  open_array = []
  return 0 unless valid_brackets(string, open_array)

  1
end

def valid_brackets(string, open_array)
  string.chars.each do |char|
    if OPENBRACKETS.include?(char)
      open_array.push(char)
    elsif CLOSEBRACKETS.include?(char)
      return false unless open_array.last == OPENBRACKETS[CLOSEBRACKETS.index(char)]

      open_array.pop

    end
  end
  return false if open_array.size.positive?

  true
end
