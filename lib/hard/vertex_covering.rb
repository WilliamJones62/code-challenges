# frozen_string_literal: true

# This class contains vertex covering logic
class VertexCovering
  def vertex_covering(array)
    return array[1] if array[2] == '()'

    convert_strings_to_arrays(array)
    @vertices -= @covered_vertices
    find_uncovered_edges
    return_results
  end

  def convert_strings_to_arrays(array)
    @vertices = load_array_data(array, 0)
    @edges = load_array_data(array, 1)
    @edge_vertices = []
    @edges.each do |edge|
      @edge_vertices << edge.split('-')
    end
    @covered_vertices = load_array_data(array, 2)
  end

  def load_array_data(array, index)
    array[index].delete('()').split(',')
  end

  def find_uncovered_edges
    @uncovered_edges = []
    (0...@edge_vertices.length).each do |i|
      @uncovered_edges << @edges[i] if (@edge_vertices[i] - @vertices).empty?
    end
  end

  def return_results
    return 'yes' if @uncovered_edges.empty?

    "(#{@uncovered_edges.join(',')})"
  end
end
