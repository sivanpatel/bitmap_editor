require_relative './pixel.rb'

class Bitmap
  attr_accessor :bitmap_table

  def initialize(columns, rows)
    validate_coordinates(columns, rows)
    @columns = columns
    @rows = rows
    @bitmap_table = table
  end

  private

  def table
    Array.new(@rows) { Array.new(@columns) { Pixel.new } }
  end

  def validate_coordinates(columns, rows)
    raise "Coordinates out of bounds, must be between 1 and 250" if columns > 250 || columns < 1 || rows > 250 || rows < 1
  end
end
