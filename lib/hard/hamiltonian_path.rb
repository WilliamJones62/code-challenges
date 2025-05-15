# frozen_string_literal: true

# This class contains hamiltonian path logic
class HamiltonianPath
  def hamiltonian_path(array)
    create_variables(array)
    load_node_connections
    test_path
  end

  def create_variables(array)
    nodes, @edges, @path = array.map { |string| string.delete('()').split(',') }
    @node_connections = {}
    nodes.each { |node| @node_connections[node] = [] }
  end

  def load_node_connections
    @edges.each do |edge|
      edge_nodes = edge.split('-')
      @node_connections[edge_nodes[0]] << edge_nodes[1]
      @node_connections[edge_nodes[1]] << edge_nodes[0]
    end
  end

  def test_path
    current_node_connections = @node_connections[@path[0]]
    last_node = @path[0]
    (1...@path.length).each do |i|
      return last_node unless current_node_connections.include?(@path[i])

      last_node = @path[i]
      current_node_connections = @node_connections[@path[i]]
    end
    'yes'
  end
end
