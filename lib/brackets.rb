# frozen_string_literal: true

def brackets(string)
  close_brackets = ['}', ']', ')']
  open_brackets = ['{', '[', '(']
  open_array = []
  string.chars.each do |char|
    if open_brackets.include?(char)
      open_array.push(char)
    elsif close_brackets.include?(char)
      i = close_brackets.index(char)
      return 0 unless open_array.last == open_brackets[i]

      open_array.pop

    end
  end
  return 0 if open_array.size.positive?

  1
end
