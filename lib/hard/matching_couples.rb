# frozen_string_literal: true

# This class contains matching couples logic
class MatchingCouples
  def matching_couples(array)
    men = array[0]
    women = array[1]
    couples = array[2] / 2
    combinations = 1
    couples.times do
      combinations *= (men * women)
      men -= 1
      women -= 1
    end
    combinations / couples
  end
end
