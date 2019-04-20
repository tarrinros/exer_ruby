class Triangle
  def initialize(sides)
    @sides = sides
    @triangular_shape = is_triangle?(sides)
  end

  def equilateral?
    if @triangular_shape
      @sides.all? { |side| side == @sides.max }
    else
      return false
    end
  end

  def isosceles?
    if @triangular_shape
      equal_sides = @sides.select { |side| @sides.count(side) > 1 }

      equal_sides.count >= 2 ? true : false
    else
     return false
    end
  end

  def scalene?
    if @triangular_shape
      @sides.uniq.count == 3 ? true : false
    else
      return false
    end
  end

  private

  def is_triangle?(sides)
    sides.count == 3 && sides.all? { |side| side > 0 } && sides.max <= sides.min(2).sum
  end
end