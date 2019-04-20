class Triangle
  def initialize(sides)
    @sides = sides
    @a_side = sides[0]
    @b_side = sides[1]
    @c_side = sides[2]
  end

  def is_triangle?(sides)
    min_sides = sides.min(2)

    sides.count == 3 &&
      sides.all? { |side| side > 0 } &&
      sides.max <= min_sides.sum
  end

  def equilateral?
    if is_triangle?(@sides)
      biggest_side = @sides.max

      @sides.all? { |side| side == biggest_side }
    else
      return false
    end
  end

  def isosceles?
    if is_triangle?(@sides)
      equal_sides = @sides.select{ |side| @sides.count(side) > 1 }

      equal_sides.count >= 2 ? true : false
    else
      return false
    end
  end

  def scalene?
    if is_triangle?(@sides)
      @sides.uniq.count == 3 ? true : false
    else
      return false
    end
  end
end