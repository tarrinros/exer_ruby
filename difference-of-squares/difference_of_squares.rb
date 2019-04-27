class Squares
  attr_reader :threshold

  def initialize(threshold)
    @threshold = threshold
  end

  def square_of_sum
    sum = 0

    1.upto(threshold) { |i| sum += i }

    sum ** 2
  end

  def sum_of_squares
    sum = 0

    1.upto(threshold) { |i| sum += i ** 2 }

    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end