# frozen_string_literal: true

require 'hungarian_algorithm'
# This class contains optimal assignments logic
class OptimalAssignments
  def optimal_assignments(array)
    formatted_array = array.map { |row| row.scan(/\d+/).map(&:to_i) }
    result = HungarianAlgorithm.new(formatted_array).process
    string = ''
    result.each do |integer_array|
      string += "(#{integer_array[0] + 1}-#{integer_array[1] + 1})"
    end
    string
  end
end
