class Luhn
  def self.valid?(string)
    new(string).valid?
  end

  def initialize(string)
    @string = string.delete(" ")
  end

  def valid?
    if only_digits? && size_valid?
      sum_valid?
    end
  end

  private

  attr_reader :string

  def only_digits?
    string.match(/\D/).nil?
  end

  def size_valid?
    string.size > 1
  end

  def array_of_digits
    string.to_i.digits
  end

  def luhn_sum
    array_of_digits.map.with_index do |number, i|
      if i.even?
        number
      else
        multiplied_number = number * 2
        multiplied_number -= 9 if multiplied_number > 9
        multiplied_number
      end
    end.sum
  end

  def sum_valid?
    luhn_sum % 10 == 0
  end
end