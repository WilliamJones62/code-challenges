# frozen_string_literal: true

# This class contains nim winner logic
class NimWinner
  def nim_winner(array)
    array.inject(:^).zero? ? 2 : 1
  end
end
