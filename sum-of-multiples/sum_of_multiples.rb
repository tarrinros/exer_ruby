class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(thershold)
    (1...thershold).filter { |x| multiples?(x) }.sum
  end

  private

  attr_reader :numbers

  def multiples?(x)
    numbers.any? { |y| (x % y).zero? }
  end
end