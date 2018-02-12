module Commands
  class PaintHorizontalLine

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run(args)
      column = args[2].to_i - 1
      @bitmap[column].each_with_index do |pixel, i|
        pixel.change_colour(args[3]) if ((args[0].to_i - 1)..(args[1].to_i - 1)).include?(i)
      end
    end
  end
end
