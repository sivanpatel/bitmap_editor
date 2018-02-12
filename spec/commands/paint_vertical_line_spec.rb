require 'commands/paint_vertical_line'

describe Commands::PaintVerticalLine do
  let(:pixel) { double(:pixel, :colour => 'O') }
  let(:bitmap) { double(:bitmap, bitmap_table: [[pixel,pixel],[pixel,pixel]]) }

  it 'paints a vertical line in the first column' do
    paint_vertical_line = Commands::PaintVerticalLine.new(bitmap)
    expect(bitmap.bitmap_table[0][0]).to receive(:change_colour).with('B')
    expect(bitmap.bitmap_table[0][1]).to receive(:change_colour).with('B')
    paint_vertical_line.run([1, 1, 2, 'B'])
  end
end
