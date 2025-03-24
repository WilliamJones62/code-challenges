# frozen_string_literal: true

def coins(amount)
  amt = amount
  number_of_coins = 0
  denominations = [11, 9, 7, 5, 1]
  denominations.each do |denom|
    next unless amt >= denom

    remainder = amt % denom
    number_of_coins += amt / denom
    amt = remainder
  end

  number_of_coins
end
