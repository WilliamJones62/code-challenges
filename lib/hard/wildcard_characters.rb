# frozen_string_literal: true

# This class contains wildcard characters logic
class WildcardCharacters
  def wildcard_characters(string)
    initialize_variables(string)
    until @wp == @wildcard_param_length
      case @wildcard_param[@wp]
      when '+'
        return 'false' unless plus_valid
      when '*'
        return 'false' unless asterix_valid
      end
    end
    'true'
  end

  def initialize_variables(string)
    string_array = string.split
    @char_param = string_array[1]
    @char_param_length = @char_param.length
    @wildcard_param = string_array[0]
    @wildcard_param_length = @wildcard_param.length
    @cp = @wp = 0
  end

  def plus_valid
    return false if @cp < (@char_param_length - 1) && @char_param[@cp] == @char_param[@cp + 1]

    @wp += 1
    @cp += 1
    true
  end

  def asterix_valid
    if @wildcard_param[@wp + 1] == '{'
      i = @wp + 2
      i += 1 until @wildcard_param[i] == '}'
      n = @wildcard_param[@wp + 2...i].to_i
      return false unless asterix_update_indexes(n, i)
    elsif !asterix_update_indexes(3, @wp)
      return false
    end
    true
  end

  def asterix_update_indexes(cp_int, wp_int)
    str = @char_param[@cp] * cp_int
    return false if @cp + cp_int > @char_param_length ||
                    @char_param[@cp..@cp + (cp_int - 1)] != str ||
                    @char_param[@cp + cp_int] == @char_param[@cp]

    @cp += cp_int
    @wp = wp_int + 1
    true
  end
end
