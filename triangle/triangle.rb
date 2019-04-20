class Triangle
  def initialize(sides)
    @sides = sides if triangle?(sides)
  end

  def triangle?(sides)
    min_sides = sides.min(2)
    sides.all? { |side| side > 0 } && sides.max < min_sides[0] + min_sides[1]
  end

  def equilateral?
    a_side = @sides.max
  end
end