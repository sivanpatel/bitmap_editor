module Commands
  class PaintHorizontalLine

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run(*args)
      row = args[2] - 1
      @bitmap.each_with_index do |column, i|
        column[row].change_colour(args[3]) if ((args[0] - 1)..(args[1]-1)).include?(i)
      end
    end
  end
end
