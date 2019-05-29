class Luhn
  REGEXP_PATTERN = /\D/

  def self.valid?(numbers)
    new(numbers).valid?
  end

  def initialize(numbers)
    @numbers = numbers.delete(" ")
  end

  def valid?
    sum_valid? if only_digits? && size_valid?
  end

  private

  attr_reader :numbers

  def only_digits?
    numbers.match(REGEXP_PATTERN).nil?
  end

  def size_valid?
    numbers.size > 1
  end

  def digits_collection
    numbers.to_i.digits
  end

  def luhn_sum
    digits_collection.each_slice(2).sum { |even, odd| even + xform(odd.to_i * 2) }
  end

  def sum_valid?
    luhn_sum % 10 == 0
  end

  def xform(odd)
    odd > 9 ? odd - 9 : odd
  end
end