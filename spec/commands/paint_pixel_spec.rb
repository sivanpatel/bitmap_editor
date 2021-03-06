require 'commands/paint_pixel'

describe Commands::PaintPixel do
  let(:pixel) { double(:pixel, :colour => 'O') }
  let(:bitmap) { double(:bitmap, bitmap_table: [[pixel,pixel],[pixel,pixel]]) }

  it 'colours a pixel' do
    paint = Commands::PaintPixel.new(bitmap)
    expect(pixel).to receive(:change_colour).with("A")
    paint.run([1, 1, 'A'])
  end
end
