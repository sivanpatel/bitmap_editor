require 'bitmap_editor'

describe BitmapEditor do
  let(:bitmap_editor) { described_class.new }

  it 'raises an error if no file is provided' do
    expect{ bitmap_editor.run(nil) }.to raise_error "please provide correct file"
  end

  it 'raises an error if the file name provided is not recognised' do
    expect{ bitmap_editor.run('unrecognised_file.txt') }.to raise_error "please provide correct file"
  end

  it 'raises an error if the file extenstion is not .txt' do
    expect{ bitmap_editor.run('unrecognised_file.rb') }.to raise_error "please provide correct file"
  end

  it 'shows the final bitmap when commanded to' do
    expect{ bitmap_editor.run('examples/show.txt') }.to output("OOOOO\nOOZZZ\nAWOOO\nOWOOO\nOWOOO\nOWOOO\n")
      .to_stdout
  end

  it 'clears the final bitmap when commanded to' do
    expect{ bitmap_editor.run('examples/clear.txt') }.to output("OOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\nOOOOO\n")
      .to_stdout
  end

  it 'raises an error if there is an unrecognised command' do
    expect{ bitmap_editor.run('examples/unknown.txt') }.to raise_error 'Unrecognised command'
  end

  it 'raises an error if there is an unrecognized command paramter' do
    expect { bitmap_editor.run('examples/unrecognised_command.txt') }.to raise_error 'Unrecognised command: @'
  end
end
