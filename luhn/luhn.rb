class Luhn
  def self.valid?(string)
    new(string).valid?
  end

  def initialize(string)
    @string = string.delete(" ")
  end

  def valid?
    if only_digits?
      digits = string_parse
      if digits.length > 1
        digits.map.with_index do |x, i|
          if i.even?
            x
          else
            b = x * 2
            b -= 9 if b > 9
            b
          end
        end.sum % 10 == 0
      end
    end
  end

  private

  attr_reader :string

  def only_digits?
    string.match(/\D/).nil?
  end

  def string_parse
    string.chars.map(&:to_i).reverse
  end

  def sum_valid?; end
end