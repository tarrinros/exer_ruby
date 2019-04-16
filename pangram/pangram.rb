class Pangram
  LAT_ALPHABET = ('a'..'z').to_a

  def self.pangram?(sentence)
    sentence = sentence.scan(/[[:alpha:]]/).map(&:downcase)

    LAT_ALPHABET.all? { |char| sentence.include?(char) }
  end
end