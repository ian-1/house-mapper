require 'tk'

# Draws shapes to canvas using TkCanvas
class Draw
  def initialize
    @instructions = []
  end

  def draw
    canvas = TkCanvas.new(width: 800, height: 600)
    canvas.pack
    @instructions.each { |instruction| eval(instruction) }
    canvas.mainloop
  end

  def line(x_start, y_start, x_end, y_end)
    co_ordinates = "#{x_start}, #{y_start}, #{x_end}, #{y_end}"
    @instructions << "TkcLine.new(canvas, #{co_ordinates})"
  end
end
