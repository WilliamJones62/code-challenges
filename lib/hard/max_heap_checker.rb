# frozen_string_literal: true

# This class contains matching couples logic
class MaxHeapChecker
  def max_heap_checker(array)
    greater_than_parent, parents = initialize_variables
    array.length.times do
      next_parents = []
      parents.each do |parent|
        next_parents, greater_than_parent = process_parents(array, parent, next_parents, greater_than_parent)
      end
      parents = next_parents
    end
    return 'max' if greater_than_parent.empty?

    greater_than_parent.map { |child| child }.join(',')
  end

  def initialize_variables
    [[], [0]]
  end

  def process_parents(array, parent, next_parents, greater_than_parent)
    child1, child2 = update_children(parent)

    if child1 < array.length
      next_parents, greater_than_parent = update_parent_arrays(child1, array, parent, greater_than_parent,
                                                               next_parents)
    end
    if child2 < array.length
      next_parents, greater_than_parent = update_parent_arrays(child2, array, parent, greater_than_parent,
                                                               next_parents)
    end
    [next_parents, greater_than_parent]
  end

  def update_parent_arrays(child, array, parent, greater_than_parent, next_parents)
    greater_than_parent << array[child] if array[child] > array[parent]
    next_parents << child
    [next_parents, greater_than_parent]
  end

  def update_children(parent)
    child1 = 2 * parent + 1
    child2 = 2 * parent + 2
    [child1, child2]
  end
end
