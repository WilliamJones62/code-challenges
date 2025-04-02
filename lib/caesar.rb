# frozen_string_literal: true

# This class contains caesar cypher logic
class Caesar
  LOWERCASE = %w[a b c d e f g h i j k l m n o p q r s t
                 u v w x y z].freeze
  UPPERCASE = %w[A B C D E F G H I J K L M N O P Q R S T
                 U V W X Y Z].freeze

  def caesar(string, count)
    out_arr = []
    string.chars.each do |char|
      out_arr.push(convert_char(char, count))
    end
    out_arr.join
  end

  def convert_char(char, count)
    if LOWERCASE.include?(char)
      char = char_trans(char, LOWERCASE, count)
    elsif UPPERCASE.include?(char)
      char = char_trans(char, UPPERCASE, count)
    end
    char
  end

  def char_trans(char, alpha_case, count)
    i = alpha_case.index(char)
    i += count
    i -= 26 if i > 25
    alpha_case[i]
  end
end
