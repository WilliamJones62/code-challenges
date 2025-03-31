# frozen_string_literal: true

def simple_mode(array)
  hash = array.tally
  first_max = hash.key(hash.values.max)
  return -1 if hash[first_max] == 1

  first_max
end
