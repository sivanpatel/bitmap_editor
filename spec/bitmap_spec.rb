require 'bitmap'

describe Bitmap do

  it 'raises an error if the bitmap coordinates are too big' do
    expect{ described_class.new(251, 200) }.to raise_error "Coordinates out of bounds, must be between 1 and 250"
  end
end
