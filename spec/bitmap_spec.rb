require 'bitmap'

describe Bitmap do

  let(:bitmap) { described_class.new(2, 2) }

  it 'prints the bitmap with the given intializer values' do
    expect(bitmap.print).to eq ("OO\nOO")
  end

  it 'raises an error if the bitmap coordinates are too big' do
    expect{ described_class.new(251, 200) }.to raise_error "Coordinates out of bounds, must be between 1 and 250"
  end
end
