require_relative './bitmap'
require_relative './pixel'
require_relative './commands/clear_table'
require_relative './commands/paint_horizontal_line'
require_relative './commands/paint_pixel'
require_relative './commands/paint_vertical_line'
require_relative './commands/show'

class BitmapEditor
  def run(file)
    raise "please provide correct file" if file.nil? || !File.exists?(file) || File.extname(file) != '.txt'
    File.open(file).each do |line|
      line = line.chomp
      commands = line.split(" ")
      validate_commands(commands)
      initial_command = commands.slice!(0)
      case initial_command
      when 'I'
        @bitmap = Bitmap.new(commands[0].to_i, commands[1].to_i)
      when 'C'
        Commands::ClearTable.new(@bitmap).run
      when 'L'
        Commands::PaintPixel.new(@bitmap).run(commands)
      when 'V'
        Commands::PaintVerticalLine.new(@bitmap).run(commands)
      when 'H'
        Commands::PaintHorizontalLine.new(@bitmap).run(commands)
      when 'S'
        Commands::Show.new(@bitmap).run
      else
        raise 'Unrecognised command'
      end
    end
  end

  private

  def validate_commands(commands)
    commands.each do |command|
      raise "Unrecognised command: #{command}" unless command.count("a-zA-Z0-9") > 0
    end
  end
end
