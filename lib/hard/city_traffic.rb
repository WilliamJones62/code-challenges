# frozen_string_literal: true

require 'json'

# This class contains node logic
class Node
  attr_reader :key, :edges

  def initialize(key)
    @key = key
    @edges = {}
  end

  def add_edge(key, weight = 1)
    @edges[key] = weight
  end
end

# This class contains Graph logic
class Graph
  def initialize
    @nodes = {}
  end

  def nodes_each
    @nodes.each_key { |key, node| yield [key, node] }
  end

  def add_node(key)
    @nodes[key] = Node.new(key)
    node(key)
  end

  def node(key)
    @nodes[key]
  end

  def max_traffic_from_one_road(key)
    city = node(key)

    edge_traffic = []
    city.edges.each_key do |edge_key|
      edge_traffic << sum_traffic_from_all_roads(edge_key, [key])
    end

    edge_traffic.empty? ? 0 : edge_traffic.max
  end

  def sum_traffic_from_all_roads(key, visited = [])
    city = node(key)

    visited << key

    edge_traffic = []
    city.edges.each_key do |edge_key|
      edge_traffic << sum_traffic_from_all_roads(edge_key, visited) unless visited.include?(edge_key)
    end

    edge_traffic.empty? ? key : edge_traffic.sum + key
  end
end

# This class contains city traffic logic
class CityTraffic
  def city_traffic(array)
    graph = Graph.new
    graph = load_graph(array, graph)

    traffic_results(graph)
  end

  def load_graph(array, graph)
    array.each do |city|
      city_name, roads = process_city_string(city)

      city_node = graph.add_node(city_name)

      roads.each do |road|
        city_node.add_edge(road)
      end
    end

    graph
  end

  def process_city_string(city)
    city_name, roads = city.split(':')
    city_name = city_name.to_i
    roads = JSON.parse(roads)
    [city_name, roads]
  end

  def traffic_results(graph)
    traffic_data = []

    graph.nodes_each do |city_name, _node|
      max_traffic = graph.max_traffic_from_one_road(city_name)
      traffic_data << { city_name: city_name, max_traffic: max_traffic }
    end

    traffic_data.sort_by! { |city| city[:city_name] }

    traffic_data.map { |city| "#{city[:city_name]}:#{city[:max_traffic]}" }.join(',')
  end
end
