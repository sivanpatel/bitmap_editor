module Commands
  class PaintVerticalLine

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run(*args)
      column = args[0] - 1
      @bitmap[column].each_with_index do |pixel, i|
        pixel.change_colour(args[3]) if ((args[1] - 1)..(args[2] - 1)).include?(i)
      end
    end
  end
end
