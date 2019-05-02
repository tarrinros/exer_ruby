class Phrase
  def initialize(string)
    @string = string.downcase
  end

  def word_count
    parsed_data = parse_string

    parsed_data.uniq.to_h { |key| [key, parsed_data.count(key)] }
  end

  private

  attr_reader :string

  def parse_string
    string.scan(/\A[[:word:]]+|[[:word:]]+'[[:word:]]|[[:word:]]+/)
  end
end