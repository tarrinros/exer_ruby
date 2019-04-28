class Squares
  def initialize(threshold)
    @threshold = threshold
  end

  def square_of_sum
    make_sequence.sum ** 2
  end

  def sum_of_squares
    make_sequence.map { |i| i**2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  attr_reader :threshold

  def make_sequence
    sequence = []
    1.upto(threshold) { |i| sequence.push(i) }
    sequence
  end
end