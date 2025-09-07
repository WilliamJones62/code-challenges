
# This class contains generate parentheses logic
class GenerateParentheses
    def generate_parentheses(int)
        @result = []
        @max_pairs = int
        find_valid_combinations('', 0, 0)
        @result
    end

    def find_valid_combinations(current_string, open_count, close_count)
        @result << current_string if current_string.length == @max_pairs * 2
        find_valid_combinations(current_string + "(", open_count + 1, close_count) if open_count < @max_pairs
        find_valid_combinations(current_string + ")", open_count, close_count + 1) if close_count < open_count
    end
end
