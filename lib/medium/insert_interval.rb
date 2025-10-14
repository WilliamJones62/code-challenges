# frozen_string_literal: true

# This class contains insert interval logic
class InsertInterval
    def insert_interval(intervals, new_interval)
        result = []
        i = 0
        n = intervals.length
        
        # Add all intervals that come before new_interval (no overlap)
        while i < n && intervals[i][1] < new_interval[0]
            result << intervals[i]
            i += 1
        end
        
        # Merge all overlapping intervals with new_interval
        while i < n && intervals[i][0] <= new_interval[1]
            new_interval[0] = [new_interval[0], intervals[i][0]].min
            new_interval[1] = [new_interval[1], intervals[i][1]].max
            i += 1
        end
        result << new_interval
        
        # Add all remaining intervals that come after new_interval
        while i < n
            result << intervals[i]
            i += 1
        end
        
        result
    end
end
