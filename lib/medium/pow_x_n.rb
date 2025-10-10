class PowXN
    def pow_x_n(x, n)
        return 1 if n == 0
        if n < 0
            x = 1/x 
            n = n.abs 
        end
        result = x
        (n - 1).times do
            result *= x
        end
        result.round(4)
    end
end
