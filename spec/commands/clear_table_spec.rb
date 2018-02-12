require 'commands/clear_table'

describe Commands::ClearTable do
  let(:pixel) { double(:pixel, :colour => 'A') }
  let(:bitmap) { double(:bitmap, bitmap_table: [[pixel,pixel],[pixel,pixel]]) }

  it 'clears the table' do
    clear = Commands::ClearTable.new(bitmap)
    expect(pixel).to receive(:change_colour).exactly(4).times.with('O')
    clear.run
  end
end
