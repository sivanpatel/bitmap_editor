module Commands
  class PaintVerticalLine

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run(args)
      row = args[0].to_i - 1
      @bitmap.each_with_index do |column, i|
        column[row].change_colour(args[3]) if ((args[1].to_i - 1)..(args[2].to_i - 1)).include?(i)
      end
    end
  end
end
