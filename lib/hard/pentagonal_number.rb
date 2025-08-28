# frozen_string_literal: true

# This class contains pentagonal number logic
class PentagonalNumber
  def pentagonal_number(integer)
    total_dots = 1
    (0...integer).each do |j|
      total_dots += j * 5
    end
    total_dots
  end
end
