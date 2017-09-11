require('pry')
require('rspec')
require('triangles')

# describe Triangles do
describe ("#triangle_type") do

  it("Determine if this is a triangle") do
  tri = Triangles.new(2, 2, 8)
  expect(tri.triangle_type).to(eq("This is NOT a triangle."))
  end

  it("Determine what type of triangle you have") do
  tri = Triangles.new(2, 2, 3)
  expect(tri.triangle_type).to(eq("This is an isosceles triangle."))
  end

  it("Determine what type of triangle you have") do
  tri = Triangles.new(2, 2, 2)
  expect(tri.triangle_type).to(eq("This is an equilateral triangle."))
  end

  it("Determine what type of triangle you have") do
  tri = Triangles.new(2, 3, 4)
  expect(tri.triangle_type).to(eq("This is a scalene triangle."))
  end
end
