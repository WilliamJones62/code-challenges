
# This class contains reverse integer logic
class ReverseInteger
    def reverse_integer(int)
        negative_int = true if int < 0
        return_int = int.to_s.chars.reverse.join.to_i
        return return_int * -1 if negative_int
        return_int
    end
end
