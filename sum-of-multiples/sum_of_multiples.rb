class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(threshold)
    result = []

    1.upto(threshold - 1) do |a|
      result.push(a) if numbers.any? { |b| (a % b).zero? }
    end

    result.sum
  end

  private

  attr_reader :numbers
end