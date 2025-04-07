# frozen_string_literal: true

# This class contains array rotation logic
class ArrayRotation
  def array_rotation(array)
    return '' if array.empty?

    array.rotate(array[0]).join
  end
end
