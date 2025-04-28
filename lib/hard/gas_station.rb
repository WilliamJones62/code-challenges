# frozen_string_literal: true

# This class contains gas station logic
class GasStation
  def gas_station(array)
    create_variables(array)
    find_starting_station
  end

  def create_variables(array)
    @total_stations = array.shift.to_i
    @station_count = @loop_count = @total_gas = 0
    @gas_array = []
    array.each do |string|
      gas_string_array = string.split(':')
      gas_string_array.map!(&:to_i)
      @gas_array << gas_string_array
    end
  end

  def find_starting_station
    while @station_count < @total_stations
      while @loop_count < @total_stations
        @total_gas += @gas_array[@loop_count][0]
        break if @total_gas < @gas_array[@loop_count][1]

        load_variables_for_next_loop
      end
      return (@station_count + 1).to_s if @loop_count == @total_stations

      load_variables_for_next_station
    end
    'impossible'
  end

  def load_variables_for_next_loop
    @total_gas -= @gas_array[@loop_count][1]
    @loop_count += 1
  end

  def load_variables_for_next_station
    @station_count += 1
    @gas_array.rotate!
    @loop_count = @total_gas = 0
  end
end
