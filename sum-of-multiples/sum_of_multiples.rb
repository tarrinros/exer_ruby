class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(threshold)
    # result = []
    #
    # 1.upto(threshold - 1) do |a|
    #   result.push(a) if numbers.any? { |b| (a % b).zero? }
    # end
    #
    # result.sum

    1.upto(threshold - 1).filter do |a|
      numbers.any? do |b|
        (a % b).zero?
      end
    end.sum
  end

  private

  attr_reader :numbers
end

puts SumOfMultiples.new(0).to(2)