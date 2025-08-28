# frozen_string_literal: true

# This class contains multiple brackets logic
class MultipleBrackets
  CLOSEBRACKETS = ['}', ']', ')'].freeze
  OPENBRACKETS = ['{', '[', '('].freeze

  def multiple_brackets(string)
    open_array = []
    pair_count, brackets_valid = valid_brackets(string, open_array)
    return '0' unless brackets_valid
    return '1' if pair_count.zero?

    "1 #{pair_count}"
  end

  def valid_brackets(string, open_array)
    pair_count = 0
    string.chars.each do |char|
      pair_count, brackets_valid, open_array = open_close(char, open_array, pair_count)
      return [pair_count, false] unless brackets_valid
    end
    return [pair_count, false] if open_array.size.positive?

    [pair_count, true]
  end

  def open_close(char, open_array, pair_count)
    if OPENBRACKETS.include?(char)
      open_array.push(char)
    elsif CLOSEBRACKETS.include?(char)
      if !open_array.length.positive? || open_array.last != OPENBRACKETS[CLOSEBRACKETS.index(char)]
        return [pair_count, false, open_array]
      end

      pair_count += 1
      open_array.pop
    end
    [pair_count, true, open_array]
  end
end
