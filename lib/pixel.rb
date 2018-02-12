class Pixel

  def initialize
    @colour = 'O'
  end

  def colour
    @colour
  end

  def change_colour(colour)
    @colour = colour
  end

  def clear
    @colour = "O"
  end
end
