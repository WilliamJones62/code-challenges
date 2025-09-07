
# This class contains simple recursion logic
class SimpleRecursion
    def simple_recursion(int)
        @total = 0
        # this each gets the same result as the recursion logic
        (1..int).each { |i| @total += i }
        puts "total = #{@total}"

        @total = 0
        @int = int
        recursion_routine
        @total
    end

    def recursion_routine
        return if @int == 0 
        @total += @int
        @int -= 1
        recursion_routine    
    end
end
