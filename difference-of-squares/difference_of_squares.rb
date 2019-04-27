class Squares

  def initialize(threshold)
    @threshold = threshold
  end

  def square_of_sum
    bar = 0
    1.upto(@threshold) { |a| bar += a }
    bar ** 2
  end

  def sum_of_squares
    foo = 0
    1.upto(@threshold) { |a| foo += a ** 2 }
    foo
  end

  def difference
    square_of_sum - sum_of_squares
  end
end