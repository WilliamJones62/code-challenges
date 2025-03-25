# frozen_string_literal: true

def counting_minutes(string)
  times = string.split('-')
  time1_am_pm, time1_hour_minute = break_up_time(times[0])
  time2_am_pm, time2_hour_minute = break_up_time(times[1])
  if time1_hour_minute[0] > time2_hour_minute[0] ||
     (time1_hour_minute[0] == time2_hour_minute[0] && time1_hour_minute[1] > time2_hour_minute[1])
    time2_hour_minute[0] += 24
  end
  calculate_minutes(time1_hour_minute, time2_hour_minute)
end

def break_up_time(time)
  time_am_pm = time.slice(time.size - 2..time.size)
  time_h_m = time.slice(0..time.size - 3)

  time_hour_minute = time_h_m.split(':')
  time_hour_minute[1] = time_hour_minute[1].to_i
  time_hour_minute[0] = convert24(time_hour_minute[0].to_i, time_am_pm)
  [time_am_pm, time_hour_minute]
end

def convert24(time_hour, time_am_pm)
  time_hour += 12 if time_am_pm == 'pm' && time_hour < 12
  time_hour = 0 if time_am_pm == 'am' && time_hour == 12
  time_hour
end

def calculate_minutes(time1_hour_minute, time2_hour_minute)
  time1_minutes = (time1_hour_minute[0] * 60) + time1_hour_minute[1]
  time2_minutes = (time2_hour_minute[0] * 60) + time2_hour_minute[1]
  time2_minutes - time1_minutes
end
