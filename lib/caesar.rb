# frozen_string_literal: true

def caesar(string, count)
  lower_case = %w[a b c d e f g h i j k l m n o p q r s t
                  u v w x y z]
  upper_case = %w[A B C D E F G H I J K L M N O P Q R S T
                  U V W X Y Z]
  out_arr = []
  string.chars.each do |char|
    if lower_case.include?(char)
      out_arr.push(char_trans(char, lower_case, count))
    elsif upper_case.include?(char)
      out_arr.push(char_trans(char, upper_case, count))
    else
      out_arr.push(char)
    end
  end
  out_arr.join
end

def char_trans(char, alpha_case, count)
  i = alpha_case.index(char)
  i += count
  i -= 26 if i > 25
  alpha_case[i]
end
