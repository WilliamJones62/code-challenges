# frozen_string_literal: true

require 'json'

# This class contains city traffic logic
class CityTraffic
  def city_traffic(array)
    create_variables
    convert_strings(array)
    process_cities
  end

  def create_variables
    @cities = {}
    @return_hash = {}
  end

  def convert_strings(array)
    array.each do |city_info|
      city_array = city_info.split(':')
      road_tos = JSON.parse(city_array[1])
      @cities[city_array[0].to_i] = road_tos
    end
  end

  def process_cities
    @cities.each do |city|
      @visited_cities = []
      @visited_cities << city[0]
      @neighboring_cities = city[1]
      @routes = []
      create_routes
      @return_hash[city[0]] = max_routes
    end
    create_return_string
  end

  def create_return_string
    sorted_hash_keys = @return_hash.keys.sort
    sorted_hash_keys.each do |k|
      @return_string = "#{@return_string}#{k}:#{@return_hash[k]},"
    end
    @return_string.chop
  end

  def create_routes
    @neighboring_cities.each do |neighbor|
      @routes << [neighbor, neighbor]
      @visited_cities << neighbor
    end
  end

  def max_routes
    @routes.each do |route|
      create_branches(route)
      follow_branches(route) until @branches.empty?
    end
    @routes.max_by(&:first).first
  end

  def create_branches(route)
    @branches = []
    @cities[route[1]].each do |neighbor|
      next if @visited_cities.include?(neighbor)

      route[0] += neighbor
      @visited_cities << neighbor
      @branches << neighbor
    end
  end

  def follow_branches(route)
    next_branches = []
    @branches.each do |branch|
      @cities[branch].each do |neighbor|
        next if @visited_cities.include?(neighbor)

        route[0] += neighbor
        @visited_cities << neighbor
        next_branches << neighbor
      end
    end
    @branches = next_branches
  end
end
