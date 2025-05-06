# frozen_string_literal: true

# This class contains shortest path logic
class ShortestPath
  def shortest_path(array)
    @array = array
    initialize_variables
    load_paths until @end_reached || @connections.empty?
    return_value
  end

  def initialize_variables
    @number_of_nodes = @array[0].to_i
    @nodes = []
    @connections = []
    @paths = []
    @end_reached = false
    (1..@number_of_nodes).each { |node| @nodes << @array[node] }

    (@number_of_nodes + 1...@array.length).each { |connection| @connections << @array[connection].split('-') }

    load_initial_paths

    test_end_reached
  end

  def load_initial_paths
    unused_connections = []
    @connections.each do |connection|
      start_index = connection.index(@nodes[0])

      if start_index
        # this connection includes the start node
        start_index.zero? ? (@paths << [connection[0], connection[1]]) : (@paths << [connection[1], connection[0]])
      else
        unused_connections << connection
      end
    end

    @connections = unused_connections
  end

  def load_paths
    next_paths = []
    @paths.each do |path|
      unused_connections, next_connections = load_connections([], [], path)
      (1..@number_of_nodes).each { |node| @nodes << @array[node] }
      next_paths = process_next_connections(next_connections, path, next_paths) if next_connections.length.positive?
      @connections = unused_connections
    end
    load_next_paths(next_paths)
  end

  def load_connections(unused_connections, next_connections, path)
    @connections.each do |connection|
      if connection.include?(path.last)
        (next_connections << connection)
      else
        (unused_connections << connection)
      end
    end

    [unused_connections, next_connections]
  end

  def process_next_connections(next_connections, path, next_paths)
    next_connections.each do |nc|
      next_node_index = nc.index(path.last)

      current_path = []
      path.each do |n|
        current_path << n
      end
      next_node_index.zero? ? (current_path << nc[1]) : (current_path << nc[0])
      next_paths << current_path
    end
    next_paths
  end

  def load_next_paths(next_paths)
    if @paths == next_paths
      @connections = []
    else
      @paths = next_paths
      test_end_reached
    end
  end

  def test_end_reached
    @paths.each do |path|
      if path.last == @nodes.last
        @end_reached = path
        break
      end
    end
  end

  def return_value
    return @end_reached.join('-') if @end_reached

    -1
  end
end
