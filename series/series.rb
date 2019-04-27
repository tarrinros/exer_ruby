class Series
  attr_reader :digits_sequence
  private :digits_sequence

  def initialize(digits_sequence)
    @digits_sequence = digits_sequence
  end

  def slices(elements_amount)
    raise ArgumentError.new unless digits_sequence.length >= elements_amount

    digits_sequence.chars.each_cons(elements_amount).map(&:join)
  end
end