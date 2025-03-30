# frozen_string_literal: true

def prime_mover(integer)
  prime_array = [2]
  current_int = 2

  until prime_array.length == integer
    current_int += 1
    current_int, prime_array = prime_array_update(current_int, prime_array)
  end
  prime_array.last
end

def prime_array_update(current_int, prime_array)
  prime_number = true
  prime_array.each do |factor|
    if (current_int % factor).zero?
      prime_number = false
      break
    end
  end
  prime_array.push(current_int) if prime_number
  [current_int, prime_array]
end
