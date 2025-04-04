# frozen_string_literal: true

# This class contains binary to decimal logic
class BinaryToDecimal
  def binary_to_decimal(string)
    binary_str = string.sub(/^0*/, '')
    bin_digit_arr = binary_str.reverse.chars
    decimal = 0
    index = 0
    bin_digit_arr.each do |b|
      decimal += b.to_i * 2**index
      index += 1
    end
    decimal
  end
end
