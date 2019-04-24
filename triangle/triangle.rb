class Triangle
  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    return false unless valid?

    @sides.all? { |side| side == @sides.first }
  end

  def isosceles?
    return false unless valid?

    return true if equilateral?

    at_least_two_matching_sides?
  end

  def scalene?
    return false unless valid?

    @sides.uniq.count == 3
  end

  private

  def valid?
    @sides.count == 3 && @sides.all? { |side| side > 0 } && @sides.max <= @sides.min(2).sum
  end

  def at_least_two_matching_sides?
    @sides.uniq.count <= 2
  end
end