require_relative './pixel.rb'

class Bitmap
  attr_accessor :bitmap_table

  VALID_COLUMNS_COORDINATES = 1..250
  VALID_ROWS_COORDINATES = 1..250

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
    raise "Columns out of bounds, must be between 1 and 250" unless VALID_COLUMNS_COORDINATES.include?(columns)
    raise "Rows out of bounds, must be between 1 and 250" unless VALID_ROWS_COORDINATES.include?(rows)
  end
end
