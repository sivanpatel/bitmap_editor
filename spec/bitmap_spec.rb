require 'bitmap'

describe Bitmap do

  it 'raises an error if the bitmap columns coordinates are too big' do
    expect{ described_class.new(251, 200) }.to raise_error "Columns out of bounds, must be between 1 and 250"
  end

  it 'raises an error if the bitmap rows coordinates are too big' do
    expect{ described_class.new(200, 258) }.to raise_error "Rows out of bounds, must be between 1 and 250"
  end
end
