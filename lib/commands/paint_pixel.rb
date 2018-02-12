module Commands
  class PaintPixel

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run(*args)
      pixel = @bitmap[args[0] - 1][args[1] - 1]
      pixel.change_colour(args[2])
    end
  end
end
