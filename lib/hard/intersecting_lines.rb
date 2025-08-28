# frozen_string_literal: true

# This class contains intersecting lines logic
class IntersectingLines
  def intersecting_lines(array)
    @lines = []
    create_lines(array)
    return 'no intersection' if no_intersection?

    find_constants
    find_intersection
    format_answer
  end

  def create_lines(array)
    array.each do |string|
      line_array = string.delete('()').split(',')
      @lines << line_array.map!(&:to_i)
    end
  end

  def no_intersection?
    @min_max_array = []
    create_min_max_array
    if @min_max_array[0] > @min_max_array[7] ||
       @min_max_array[1] < @min_max_array[6] ||
       @min_max_array[4] > @min_max_array[3] ||
       @min_max_array[5] < @min_max_array[2]
      return true
    end

    false
  end

  def create_min_max_array
    load_min_max_array(@lines.dig(0, 0), @lines.dig(1, 0))
    load_min_max_array(@lines.dig(2, 0), @lines.dig(3, 0))
    load_min_max_array(@lines.dig(0, 1), @lines.dig(1, 1))
    load_min_max_array(@lines.dig(2, 1), @lines.dig(3, 1))
  end

  def load_min_max_array(value1, value2)
    if value1 > value2
      @min_max_array << value2
      @min_max_array << value1
    else
      @min_max_array << value1
      @min_max_array << value2
    end
  end

  def find_constants
    @m1 = find_slope(@lines.dig(1, 1), @lines.dig(0, 1), @lines.dig(1, 0), @lines.dig(0, 0))
    @m2 = find_slope(@lines.dig(3, 1), @lines.dig(2, 1), @lines.dig(3, 0), @lines.dig(2, 0))
    @b1 = find_y_intercept(@lines.dig(0, 1), @lines.dig(0, 0), @m1)
    @b2 = find_y_intercept(@lines.dig(2, 1), @lines.dig(2, 0), @m2)
  end

  def find_intersection
    @m = load_constants(@m1, @m2)
    @b = load_constants(@b1, @b2)
    load_x_y
  end

  def find_slope(y_second, y_first, x_second, x_first)
    (y_second - y_first.to_f) / (x_second - x_first)
  end

  def find_y_intercept(line_y, line_x, slope)
    line_y.to_f - (line_x * slope)
  end

  def load_constants(constant1, constant2)
    constant1 > constant2 ? constant1 - constant2 : constant2 - constant1
  end

  def load_x_y
    @x = @b / @m
    @y = (@m1 * @x) + @b1
  end

  def format_answer
    string = "(#{@x.to_r.rationalize(0.05)},#{@y.to_r.rationalize(0.05)})"
    string.delete!('/1') if string.include?('/1,')
    string
  end
end
