# frozen_string_literal: true

# This class contains array couples logic
class ArrayCouples
  def array_couples(array)
    pairs_array = array.each_slice(2).to_a
    pairs_array.each do |pair|
      match_i = pairs_array.index(pair.reverse)
      if match_i
        pairs_array.delete(pair)
        pairs_array.delete(pair.reverse)
      end
    end
    return 'true' if pairs_array.empty?

    pairs_array.join(',')
  end
end
