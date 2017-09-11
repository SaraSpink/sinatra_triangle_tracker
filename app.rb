require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/triangles')

get('/') do
  erb(:input)
end

get('/output') do
  @side1 = params.fetch("side1")
  @side2 = params.fetch("side2")
  @side3 = params.fetch("side3")

  triangle = Triangles.new(@side1, @side2, @side3)

  if triangle.not_a_triangle?
    @string_to_display = "This is not a triangle, try again."
  elsif triangle.is_equilateral?
    @string_to_display = "You have an EQUILATERAL triangle."
  elsif triangle.is_isoceles?
    @string_to_display = "You have an ISOCELES triangle."
  else
    @string_to_display = "You have a SCALENE triangle."
  end

  # @length = params.fetch("length")
  # @width = params.fetch("width")
  # rectangle = Rectangle.new(@length, @width)
  # if rectangle.square?
  #   @string_to_display = "This is a square."
  # else
  #   @string_to_display = "This is not a square."
  # end
  erb(:output)
end
