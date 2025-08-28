# frozen_string_literal: true

# This class contains string reduction logic
class StringReduction
  def string_reduction(string)
    work_string = string.dup
    string_length = work_string.length
    no_length_change = false
    until no_length_change
      work_string, string_length, no_length_change = modify_string(work_string, string_length, no_length_change)
    end
    string_length
  end

  def modify_string(work_string, string_length, no_length_change)
    work_string.sub!(/ab|ba/, 'c')
    work_string.sub!(/cb|bc/, 'a')
    work_string.sub!(/ac|ca/, 'b')
    if string_length == work_string.length
      no_length_change = true
    else
      string_length = work_string.length
    end
    [work_string, string_length, no_length_change]
  end
end
