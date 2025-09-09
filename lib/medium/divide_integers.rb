
# This class contains divide integers logic
class DivideIntegers
    def divide_integers(int1, int2)
        result = 0
        dividend = int1
        divisor = int2.abs
        until dividend < divisor do
            dividend -= divisor
            result += 1
        end
        int2 < 0 ? result * -1 : result
    end
end
