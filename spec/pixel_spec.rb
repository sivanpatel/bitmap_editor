require 'pixel'

describe Pixel do
  let(:pixel) { described_class.new }

  it 'is initialized with the colour O' do
    expect(pixel.colour).to eq 'O'
  end

  it 'can change colour' do
    pixel.change_colour('B')
    expect(pixel.colour).to eq 'B'
  end

  it 'clears the pixel' do
    pixel.change_colour('B')
    pixel.clear
    expect(pixel.colour).to eq 'O'
  end
end
