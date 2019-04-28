class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    parsed_data = parse_string

    parsed_data.uniq.to_h { |e| [e, parsed_data.count(e)] }
  end

  private

  attr_reader :string

  def parse_string
    string.scan(/\A[[:word:]]+|[[:word:]]+'[[:word:]]|[[:word:]]+/).map(&:downcase)
  end
end