# frozen_string_literal: true

LOWERCASE = ('a'..'z')
def palindrome(string)
  clean_string = string.downcase.chars.select { |element| LOWERCASE.include?(element) }
  return 'true' if clean_string == clean_string.reverse

  'false'
end
