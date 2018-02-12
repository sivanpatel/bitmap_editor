module Commands
  class Show

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run
      @bitmap.map do |row|
        row.map do |pixel|
          pixel.colour
        end.join
      end.join("\n")
    end
  end
end
