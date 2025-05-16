# frozen_string_literal: true

# This class contains farthest nodes logic
class FarthestNodes
  def farthest_nodes(array)
    initialize_variables
    create_node_connections(array)
    find_longest_path
  end

  def initialize_variables
    @longest_path = 0
    @visited_nodes = []
    @node_connections = {}
  end

  def create_node_connections(array)
    array.each do |edge|
      edge_nodes = edge.split('-')
      load_node_connections(edge_nodes[0], edge_nodes[1])
      load_node_connections(edge_nodes[1], edge_nodes[0])
    end
  end

  def load_node_connections(node1, node2)
    if @node_connections.key?(node1)
      @node_connections[node1] << node2 unless @node_connections[node1].include?(node2)
    else
      @node_connections[node1] = [node2]
    end
  end

  def find_longest_path
    @node_connections.each do |key, nodes|
      next unless nodes.length == 1

      @visited_nodes << key
      @path_length = 0
      walk_path(nodes)
      @longest_path = @path_length if @path_length > @longest_path
    end
    @longest_path
  end

  def walk_path(nodes)
    until nodes.empty?
      @next_nodes = []
      nodes.each do |node|
        @visited_nodes << node
        node_array = @node_connections[node]
        load_next_nodes(node_array)
      end
      @path_length += 1
      nodes = @next_nodes
    end
  end

  def load_next_nodes(node_array)
    node_array.each do |na|
      unless @visited_nodes.include?(na)
        @next_nodes << na
        @visited_nodes << na
      end
    end
  end
end
