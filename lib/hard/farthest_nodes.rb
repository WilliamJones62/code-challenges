# frozen_string_literal: true

require 'set'
# This class contains farthest nodes logic
class FarthestNodes
  def farthest_nodes(array)
    nodes = create_node_keys(array)
    nodes = load_node_edges(array, nodes)
    find_longest_path(nodes)
  end

  def create_node_keys(array)
    node_keys = Set.new(array.join('-').split('-'))

    nodes = {}
    node_keys.each do |key|
      nodes[key] = Node.new(key)
    end
    nodes
  end

  def load_node_edges(array, nodes)
    array.each do |connection|
      node_a, node_b = connection.split('-')
      nodes[node_a].add_edge(nodes[node_b])
      nodes[node_b].add_edge(nodes[node_a])
    end
    nodes
  end

  def find_longest_path(nodes)
    longest_path = 0
    nodes.each_value do |node|
      path = node.get_farthest_path
      longest_path = path.length if path.length > longest_path
    end

    longest_path - 1
  end
end

# This class contains node logic
class Node
  attr_reader :key, :edges

  def initialize(key)
    @key = key
    @edges = []
  end

  def add_edge(node)
    @edges.push(node)
  end

  def get_farthest_path(visited = [])
    return visited if visited.include?(@key)

    visited = visited.dup
    visited << @key

    self_and_children = []

    @edges.each do |edge|
      child = edge.get_farthest_path(visited)
      self_and_children << child
    end

    return visited if self_and_children.empty?

    self_and_children.sort_by(&:length).reverse[0]
  end
end
