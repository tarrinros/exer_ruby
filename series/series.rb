class Series
  def initialize(digits_sequence)
    @digits_sequence = digits_sequence
  end

  def slices(elements_amount)
    raise ArgumentError.new unless digits_sequence.length >= elements_amount

    digits_sequence.chars.each_cons(elements_amount).map(&:join)
  end

  private

  attr_reader :digits_sequence
end