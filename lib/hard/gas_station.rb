# frozen_string_literal: true

# This class contains gas station logic
class GasStation
  def gas_station(array)
    total_stations, gas_array = create_variables(array)
    find_starting_station(total_stations, gas_array, 0, 0, 0)
  end

  def create_variables(array)
    total_stations = array.shift.to_i
    gas_array = []
    array.each do |string|
      gas_string_array = string.split(':')
      gas_string_array.map!(&:to_i)
      gas_array << gas_string_array
    end

    [total_stations, gas_array]
  end

  def find_starting_station(total_stations, gas_array, station_count, loop_count, total_gas)
    while station_count < total_stations
      while loop_count < total_stations
        total_gas += gas_array[loop_count][0]
        break if total_gas < gas_array[loop_count][1]

        total_gas, loop_count = load_variables_for_next_loop(total_gas, loop_count, gas_array)
      end
      return (station_count + 1).to_s if loop_count == total_stations

      station_count, gas_array, loop_count, total_gas = load_variables_for_next_station(station_count, gas_array)
    end
    'impossible'
  end

  def load_variables_for_next_loop(total_gas, loop_count, gas_array)
    total_gas -= gas_array[loop_count][1]
    loop_count += 1
    [total_gas, loop_count]
  end

  def load_variables_for_next_station(station_count, gas_array)
    station_count += 1
    gas_array.rotate!
    [station_count, gas_array, 0, 0]
  end
end
