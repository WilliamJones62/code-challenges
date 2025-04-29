# frozen_string_literal: true

# This class contains line ordering logic
class LineOrdering
  def line_ordering(array)
    @uniq_array = []
    remove_equivalent_strings(array)
    @in_front = []
    @behind = []
    create_order
    return 0 unless valid_array
    return 1 if @behind.length == @behind.uniq.length

    factorial(@behind.length - @behind.uniq.length) * @behind.length
  end

  def remove_equivalent_strings(array)
    array.each do |string|
      if string[1] == '<'
        replacement_string = "#{string[2]}>#{string[0]}"
        @uniq_array << replacement_string unless @uniq_array.include?(replacement_string)
      elsif !@uniq_array.include?(string)
        @uniq_array << string
      end
    end
  end

  def valid_array
    first_in_line = @in_front - @behind
    return false if first_in_line.empty?

    last_in_line = @behind - @in_front
    return false if last_in_line.empty?

    true
  end

  def create_order
    @uniq_array.each do |string|
      if string[1] == '>'
        @in_front << string[0]
        @behind << string[2]
      else
        @in_front << string[2]
        @behind << string[0]
      end
    end
  end

  def factorial(integer)
    factorial = counter = 1
    while counter <= integer
      factorial *= counter
      counter += 1
    end
    factorial
  end
end
