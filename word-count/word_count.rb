class Phrase
  def initialize(string)
    @string = string.downcase
  end

  def word_count
    parse_string.uniq.to_h { |key| [key, parse_string.count(key)] }
  end

  private

  def string
    @string
  end

  def parse_string
    string.scan(/\A[[:word:]]+|[[:word:]]+'[[:word:]]|[[:word:]]+/)
  end
end