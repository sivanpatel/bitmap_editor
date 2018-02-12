module Commands
  class Show

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run
      puts table
    end

    def table
      @bitmap.map do |row|
        row.map do |pixel|
          pixel.colour
        end.join
      end.join("\n")
    end
  end
end
