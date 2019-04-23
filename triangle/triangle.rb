class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return false unless is_triangle?

    @sides.all? { |side| side == @sides.first }
  end

  def isosceles?
    return false unless is_triangle?
    equal_sides = @sides.select { |side| @sides.count(side) > 1 }

    equal_sides.count >= 2 ? true : false
  end

  def scalene?
    return false unless is_triangle?

    @sides.uniq.count == 3 ? true : false
  end

  private

  def is_triangle?
    @sides.count == 3 && @sides.all? { |side| side > 0 } && @sides.max <= @sides.min(2).sum
  end
end