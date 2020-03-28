#!/usr/bin/env ruby

require 'tk'

canvas = TkCanvas.new(width: 800, height: 600)
canvas.pack
TkcLine.new(canvas, 100, 100, 200, 100)
canvas.mainloop
