module Commands
  class ClearTable

    def initialize(bitmap)
      @bitmap = bitmap.bitmap_table
    end

    def run
      @bitmap.each do |column|
        column.each do |pixel|
          pixel.change_colour('O')
        end
      end
    end
  end
end
