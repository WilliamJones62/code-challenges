# frozen_string_literal: true

# This class contains division logic
class Division
  def division(int1, int2)
    int1_factors = (1...int1).select { |n| (int1 % n).zero? }
    int2_factors = (1...int2).select { |n| (int2 % n).zero? }
    int1_factors.reverse!
    int2_factors.reverse!
    return find_largest_common_factor(int2_factors, int1_factors) if int1_factors.length > int2_factors.length

    find_largest_common_factor(int1_factors, int2_factors)
  end

  def find_largest_common_factor(arr1, arr2)
    arr1.each do |f|
      return f if arr2.include?(f)
    end
  end
end
