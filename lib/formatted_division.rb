# frozen_string_literal: true

def formatted_division(int1, int2)
  float = (int1.to_f / int2)
  string = format('%.4f', float)
  return string if float < 1000

  whole, decimal = string.split('.')
  num_groups = whole.chars.to_a.reverse.each_slice(3)
  whole_with_commas = num_groups.map(&:join).join(',').reverse
  [whole_with_commas, decimal].compact.join('.')
end
