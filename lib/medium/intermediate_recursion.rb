
# This class contains intermediate recursion logic
class IntermediateRecursion
    def intermediate_recursion(n, m)
        @route_count = 0
        @n = n
        @m = m
        # top, left start
        total_routes(1, 1)
        @route_count
    end

    def total_routes(rows, cols)
        # bottom right end
        @route_count += 1 if rows == @n && cols == @m
        total_routes(rows + 1, cols) if rows < @n
        total_routes(rows, cols + 1) if cols < @m
    end
end
