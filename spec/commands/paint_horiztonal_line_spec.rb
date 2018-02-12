require 'commands/paint_horizontal_line'

describe Commands::PaintHorizontalLine do
  let(:pixel) { double(:pixel, :colour => 'O') }
  let(:bitmap) { double(:bitmap, bitmap_table: [[pixel,pixel],[pixel,pixel]]) }

  it 'paints a horizontal line in the first row' do
    paint_horizontal_line = Commands::PaintHorizontalLine.new(bitmap)
    expect(bitmap.bitmap_table[0][0]).to receive(:change_colour).with('B')
    expect(bitmap.bitmap_table[1][0]).to receive(:change_colour).with('B')
    paint_horizontal_line.run(1, 2, 1, 'B')
  end
end
