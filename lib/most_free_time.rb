# frozen_string_literal: true

def most_free_time(arr)
  # 1. convert times to minutes from midnight.
  ranges_arr = create_ranges_in_minutes(arr)
  # 2. sort ranges on start time
  ranges_arr.sort_by! { |el| el[0] }
  # 3. find difference between end and start times of ranges
  free_times = create_free_times(ranges_arr)
  # 4. format the return value
  format_return_string(free_times)
end

def format_return_string(free_times)
  free_time_hours = free_times.max / 60
  free_time_minutes = free_times.max % 60
  "#{free_time_hours.to_s.rjust(2, '0')}:#{free_time_minutes.to_s.rjust(2, '0')}"
end

def create_free_times(ranges_arr)
  free_times = []
  end_minute = ranges_arr[0][1]
  (1..(ranges_arr.length - 1)).each do |i|
    free_times.push(ranges_arr[i][0] - end_minute)
    end_minute = ranges_arr[i][1]
  end
  free_times
end

def create_ranges_in_minutes(arr)
  ranges_arr = []
  arr.each do |string|
    times = string.split('-')
    time1_hour_minute = break_up_time(times[0])
    time2_hour_minute = break_up_time(times[1])
    time2_hour_minute[0] = check_for_next_day(time1_hour_minute, time2_hour_minute)
    ranges_arr.push(create_minutes_arr(time1_hour_minute, time2_hour_minute))
  end
  ranges_arr
end

def check_for_next_day(time1_hour_minute, time2_hour_minute)
  if time1_hour_minute[0] > time2_hour_minute[0] ||
     (time1_hour_minute[0] == time2_hour_minute[0] && time1_hour_minute[1] > time2_hour_minute[1])
    time2_hour_minute[0] += 24
  end
  time2_hour_minute[0]
end

def break_up_time(time)
  time_am_pm = time.slice(time.size - 2..time.size)
  time_h_m = time.slice(0..time.size - 3)

  time_hour_minute = time_h_m.split(':')
  time_hour_minute[1] = time_hour_minute[1].to_i
  time_hour_minute[0] = convert24(time_hour_minute[0].to_i, time_am_pm)
  time_hour_minute
end

def convert24(time_hour, time_am_pm)
  time_hour += 12 if time_am_pm == 'PM' && time_hour < 12
  time_hour = 0 if time_am_pm == 'AM' && time_hour == 12
  time_hour
end

def create_minutes_arr(time1_hour_minute, time2_hour_minute)
  minutes_arr = []
  minutes_arr.push(calculate_minutes(time1_hour_minute))
  minutes_arr.push(calculate_minutes(time2_hour_minute))
  minutes_arr
end

def calculate_minutes(time_hour_minute)
  (time_hour_minute[0] * 60) + time_hour_minute[1]
end
