require 'commands/show'

describe Commands::Show do
  let(:pixel) { double(:pixel, :colour => 'A') }
  let(:bitmap) { double(:bitmap, bitmap_table: [[pixel,pixel],[pixel,pixel]]) }

  it 'show the table' do
    show = Commands::Show.new(bitmap)
    expect(show.table).to eq("AA\nAA")
  end
end
