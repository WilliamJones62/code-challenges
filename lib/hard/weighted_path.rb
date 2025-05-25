# frozen_string_literal: true

# This class contains weighted path logic
class WeightedPath
  def weighted_path(array)
    initialize_variables(array)
    find_lightest_path
  end

  def initialize_variables(array)
    edges = []
    @nodes = []
    number_of_nodes = array[0].to_i
    (1..number_of_nodes).each { |node| @nodes << array[node] }
    ((number_of_nodes + 1)...array.length).each { |edge| edges << array[edge] }
    initialize_instance_variables
    create_node_connections(edges)
  end

  def initialize_instance_variables
    @node_connections = {}
    @routes = []
    @start_node = @nodes.first
    @end_node = @nodes.last
  end

  def create_node_connections(edges)
    edges.each do |edge|
      edge_array = edge.split('|')
      load_node_connections(edge_array[0], edge_array[1], edge_array[2].to_i)
      load_node_connections(edge_array[1], edge_array[0], edge_array[2].to_i)
    end
  end

  def load_node_connections(node1, node2, weight)
    if @node_connections.key?(node1)
      @node_connections[node1] << [node2, weight] unless @node_connections[node1].include?([node2, weight])
    else
      @node_connections[node1] = [[node2, weight]]
    end
  end

  def find_lightest_path
    load_routes
    @lightest_weight = false
    return -1 if @routes.empty?

    @routes.each do |route|
      find_lightest_weight(route)
    end
    return @return_string if @return_string

    -1
  end

  def find_lightest_weight(route)
    @route_weight = 0
    node_array = route.split('-')
    (0..node_array.length - 2).each do |i|
      update_route_weight(node_array, i)
    end
    return unless !@lightest_weight || @route_weight < @lightest_weight

    @return_string = route
    @lightest_weight = @route_weight
  end

  def update_route_weight(node_array, index)
    connections = @node_connections[node_array[index]]
    connections.each do |connection|
      if connection[0] == node_array[index + 1]
        @route_weight += connection[1]
        break
      end
    end
  end

  def load_routes
    current_routes = [@start_node]
    @node_length = @start_node.length

    until current_routes.empty?
      @next_routes = []
      current_routes.each do |route|
        update_routes(route)
      end
      current_routes = @next_routes.map(&:clone)
    end
  end

  def update_routes(route)
    node_connection = @node_connections[route[route.length - @node_length, @node_length]]
    return unless node_connection

    node_connection.each do |next_node|
      push_routes(route, next_node)
    end
  end

  def push_routes(route, next_node)
    if next_node[0] == @end_node
      @routes << "#{route}-#{next_node[0]}"
    elsif !route.split('-').include?(next_node[0])
      @next_routes.push("#{route}-#{next_node[0]}")
      @node_length = next_node[0].length
    end
  end
end
