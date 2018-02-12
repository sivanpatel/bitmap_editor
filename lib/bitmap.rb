require_relative './pixel.rb'

class Bitmap

  def initialize(columns, rows)
    validate_coordinates(columns, rows)
    @columns = columns
    @rows = rows
  end

  def print
    bitmap_table.map do |row|
      row.map do |pixel|
        pixel.colour
      end.join
    end.join("\n")
  end

  private

  def bitmap_table
    Array.new(@rows) { Array.new(@columns) { Pixel.new } }
  end

  def validate_coordinates(columns, rows)
    raise "Coordinates out of bounds, must be between 1 and 250" if columns > 250 || columns < 1 || rows > 250 || rows < 1
  end
end
