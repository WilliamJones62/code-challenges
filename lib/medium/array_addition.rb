# frozen_string_literal: true

# This class contains array addition logic
class ArrayAddition
  def array_addition(arr)
    largest_num = arr.max
    arr.delete(largest_num)
    sub_arrs = generate_sub_arrs(arr)
    test_sub_arrs(sub_arrs, largest_num)
  end

  def generate_sub_arrs(arr)
    sub_arrs = []
    (1...(arr.size + 1)).each do |i|
      comb_arr = arr.combination(i)
      sub_arrs.push(comb_arr)
    end
    sub_arrs
  end

  def test_sub_arrs(sub_arrs, largest_num)
    sub_arrs.each do |sub_arr|
      sub_arr.each do |sub_sub_arr|
        sum = 0

        sub_sub_arr.each do |int|
          sum += int
        end
        return 'true' if sum == largest_num
      end
    end
    'false'
  end
end
