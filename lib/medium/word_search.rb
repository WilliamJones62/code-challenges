# frozen_string_literal: true

# This class contains word_search logic
class WordSearch
    def word_search(arr, str)
        @matrix = arr.dup
        @col_length = @matrix[0].length
        @row_length = @matrix.length
        @word = str
        @word_length = @word.length
        @result = false
        (0...@row_length).each do |i| 
            (0...@col_length).each do |j| 
                find_word(i, j, [])
                return @result if @result
            end
        end
        @result
    end

    def find_word(row, col, chain)
        # stop if the word has been previously found
        return if @result
        # if the matrix char is not the next char of the word 
        # go to the next available matrix char and try again
        return if @matrix[row][col] != @word[chain.length]
        # this matrix char is in the word
        chain << [row, col]
        # stop if the word has now been found
        if chain.length == @word_length
            @result = true
            return
        end
        # find the next letter in the word
        # try up
        next_row, next_col = validate_next_matrix_char(row - 1, col, chain)
        find_word(next_row, next_col, chain) if next_row
        # try down
        next_row, next_col = validate_next_matrix_char(row + 1, col, chain)
        find_word(next_row, next_col, chain) if next_row
        # try left
        next_row, next_col = validate_next_matrix_char(row, col - 1, chain)
        find_word(next_row, next_col, chain) if next_row
        # try right
        next_row, next_col = validate_next_matrix_char(row, col + 1, chain)
        find_word(next_row, next_col, chain) if next_row
    end

    def find_next_matrix_char(row, col)
        if col + 1 == @col_length
            if row + 1 == @row_length
                return [false, false]
            else
                return [row + 1, 0]
            end
        end
        return [row, col + 1]
    end

    def validate_next_matrix_char(row, col, chain)
        return [false, false] if col == @col_length || 
                                 row == @row_length || 
                                 chain.include?([row, col])
            
        return [row, col]
    end
end