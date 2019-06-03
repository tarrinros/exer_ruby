class Luhn
  def self.valid?(numbers)
    new(numbers).valid?
  end

  def initialize(numbers)
    @numbers = numbers.delete(" ")
  end

  def valid?
    return false unless only_digits? && size_valid?

    check_sum.modulo(10).zero?
  end

  private

  attr_reader :numbers

  def only_digits?
    numbers.match(/\D/).nil?
  end

  def size_valid?
    numbers.size > 1
  end

  def digits_collection
    numbers.to_i.digits
  end

  def check_sum
    digits_collection.each_slice(2).sum { |even, odd| even + xform(double(odd.to_i)) }
  end

  def xform(odd)
    odd > 9 ? odd - 9 : odd
  end

  def double(odd)
    odd * 2
  end
end