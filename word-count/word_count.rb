class Phrase
  REGEXP_PATTERN = /\b[[[:word:]]']+\b/

  def initialize(string)
    @string = string.downcase
  end

  def word_count
    parse_string.uniq.to_h { |key| [key, parse_string.count(key)] }
  end

  private

  attr_reader :string

  def parse_string
    @parse_string ||= string.scan(REGEXP_PATTERN)
  end
end