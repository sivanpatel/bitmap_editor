require 'bitmap'

describe Bitmap do

  let(:bitmap) { described_class.new(2, 2) }

  it 'prints the bitmap with the given intializer values' do
    expect(bitmap.print).to eq ("OO\nOO")
  end
end
