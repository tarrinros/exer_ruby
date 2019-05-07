class Anagram
  def initialize(inputted_word)
    @inputted_word = inputted_word
  end

  def match(words)
    full_equality?(words) ? [] : match_anagram(words)
  end

  private

  attr_reader :inputted_word

  def full_equality?(words)
    words.all? { |word| word.downcase == inputted_word.downcase }
  end

  def letters(word)
    word.downcase.chars.sort
  end

  def match_anagram(words)
    words.select { |word| letters(word) == letters(inputted_word) }
  end
end