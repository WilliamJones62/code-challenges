# frozen_string_literal: true

# This class contains max heap logic
class MaxHeapChecker
  def max_heap_checker(array)
    initialize_variables
    array.length.times do
      @next_parents = []
      @parents.each do |parent|
        process_parents(array, parent)
      end
      @parents = @next_parents
    end
    return 'max' if @greater_than_parent.empty?

    @greater_than_parent.map { |child| child }.join(',')
  end

  def initialize_variables
    @greater_than_parent = []
    @parents = [0]
  end

  def process_parents(array, parent)
    update_children(parent)

    update_parent_arrays(@child1, array, parent) if @child1 < array.length
    return unless @child2 < array.length

    update_parent_arrays(@child2, array, parent)
  end

  def update_parent_arrays(child, array, parent)
    @greater_than_parent << array[child] if array[child] > array[parent]
    @next_parents << child
  end

  def update_children(parent)
    @child1 = 2 * parent + 1
    @child2 = 2 * parent + 2
  end
end
