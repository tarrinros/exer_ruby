class Anagram
  def initialize(word)
    @word = word
  end

  def match(words)
    equivalent?(words) ? [] : match_anagram(words)
  end

  private

  attr_reader :word

  def equivalent?(words)
    words.all? { |w| w.downcase == word.downcase }
  end

  def letters(word)
    word.downcase.chars.sort
  end

  def match_anagram(words)
    words.select { |w| letters(w) == letters(word) }
  end
end