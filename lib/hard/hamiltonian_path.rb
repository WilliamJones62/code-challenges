# frozen_string_literal: true

# This class contains hamiltonian path logic
class HamiltonianPath
  def hamiltonian_path(array)
    nodes, edges, path = array.map { |string| string.delete('()').split(',') }

    graph = Graph.new

    nodes.each { |key| graph.add_node(key) }

    graph = add_edges(graph, edges)

    missing_connections = graph.get_missing_path_connections(path)
    missing_connections.empty? ? 'yes' : missing_connections[0]
  end

  def add_edges(graph, edges)
    edges.each do |edge|
      node_a, node_b = edge.split('-')
      graph.node(node_a).add_edge(node_b)
      graph.node(node_b).add_edge(node_a)
    end
    graph
  end
end

# This class contains graph logic
class Graph
  def initialize
    @nodes = {}
  end

  def add_node(key)
    @nodes[key] = Node.new(key)
    node(key)
  end

  def node(key)
    @nodes[key]
  end

  def get_missing_path_connections(node_key_arr)
    missing_connections = []
    (1...node_key_arr.length).each do |i|
      node_a = node(node_key_arr[i - 1])
      key_b = node_key_arr[i]
      missing_connections << node_a.key unless node_a.edge?(key_b)
    end
    missing_connections
  end
end

# This class contains node logic
class Node
  attr_reader :key

  def initialize(key)
    @key = key
    @edges = {}
  end

  def add_edge(key, weight = 1)
    @edges[key] = weight
  end

  def edge?(key)
    @edges.key?(key)
  end
end
