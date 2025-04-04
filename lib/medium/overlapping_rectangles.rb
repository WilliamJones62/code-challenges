# frozen_string_literal: true

# This class contains overlapping rectangles logic
class OverlappingRectangles
  def overlapping_rectangles(string)
    string_array = split_into_character_coordinates(string)
    coordinates = convert_character_to_numeric(string_array)
    rec1_x, rec1_y = load_x_y_coordinates(coordinates[0, 4])
    rec2_x, rec2_y = load_x_y_coordinates(coordinates[4, 4])
    return 'No overlap' if no_overlap(rec1_x, rec1_y, rec2_x, rec2_y)

    calculate_overlap(rec1_x, rec1_y, rec2_x, rec2_y)
  end

  def no_overlap(rec1_x, rec1_y, rec2_x, rec2_y)
    if rec1_x.min >= rec2_x.max || rec1_x.max <= rec2_x.min || rec1_y.min >= rec2_y.max || rec1_y.max <= rec2_y.min
      return true
    end

    false
  end

  def split_into_character_coordinates(string)
    spaced_string = string.gsub('),', '), ')
    spaced_string.delete!('()')
    spaced_string.split(', ')
  end

  def convert_character_to_numeric(string_array)
    coordinates = []
    string_array.each do |c|
      string_coordinate = c.split(',')
      coordinate = []
      string_coordinate.each do |s|
        coordinate.push(s.to_i)
      end
      coordinates.push(coordinate)
    end
    coordinates
  end

  def load_x_y_coordinates(rectangle)
    rec_x = []
    rec_y = []
    rectangle.each do |c|
      rec_x.push(c[0])
      rec_y.push(c[1])
    end
    [rec_x, rec_y]
  end

  def calculate_overlap(rec1_x, rec1_y, rec2_x, rec2_y)
    overlap_x_min = [rec1_x.min, rec2_x.min].max
    overlap_x_max = [rec1_x.max, rec2_x.max].min
    overlap_y_min = [rec1_y.min, rec2_y.min].max
    overlap_y_max = [rec1_y.max, rec2_y.max].min
    (overlap_x_max - overlap_x_min) * (overlap_y_max - overlap_y_min)
  end
end
