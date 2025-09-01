# frozen_string_literal: true

# This class contains sudoku validation logic
class ValidSudoku
    NUMBERS = '1'..'9'.freeze
    def valid_sudoku(arr)
        @arr = arr
        return false if !valid_rows || !valid_columns || !valid_squares
        true
    end

    def valid_rows
        puts "valid_rows"
        @arr.each do |row|
            row.each {|cell| return false if NUMBERS.include?(cell) && row.count(cell) > 1}
        end
        true
    end

    def valid_columns
        puts "valid_columns"
        (0..8).each do |column|
            col_arr = []
            @arr.each do |row| 
                return false if NUMBERS.include?(row[column]) && col_arr.include?(row[column])
                col_arr.push(row[column])
            end
        end
        true
    end

    def valid_squares
        puts "valid_squares"
        row_adjust = 0
        col_adjust = 0
        (0..2).each do |sq_row|
            row_adjust = sq_row * 3
            (0..2).each do |sq_col|
                col_adjust = sq_col * 3
                sub_sq_arr = []
                (0..2).each do |i|
                    (0..2).each do |j|
                        puts "sq_row = #{sq_row}"
                        puts "sq_col = #{sq_col}"
                        puts "i = #{i}"
                        puts "j = #{j}"
                        puts "row_adjust = #{row_adjust}"
                        puts "col_adjust = #{col_adjust}"
                        # return false if NUMBERS.include?(@arr[sq_row + (i * row_adjust)][sq_col + (j * col_adjust)]) && sub_sq_arr.include?(@arr[sq_row + (i * row_adjust)][sq_col + (j * col_adjust)])
                        # sub_sq_arr.push(@arr[sq_row + (i * row_adjust)][sq_col + (j * col_adjust)])
                        return false if NUMBERS.include?(@arr[i + row_adjust][j + col_adjust]) && sub_sq_arr.include?(@arr[i + row_adjust][j + col_adjust])
                        sub_sq_arr.push(@arr[i + row_adjust][j + col_adjust])
                        puts "sub_sq_arr = #{sub_sq_arr}"
                    end
                end
            end
        end
        true
    end
end
