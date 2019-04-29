class Anagram
  def initialize(word_example)
    @word_example = word_example.downcase
  end

  def match(words_list)
    output_array = []

    unless valid?(words_list)
      parsed_word = word_example.chars.sort

      words_list.each do |word|
        output_array.push(word) if word.downcase.chars.sort == parsed_word
      end
    end

    output_array
  end

  private

  attr_reader :word_example

  def valid?(word_list)
    word_list.all? { |word| word.downcase == word_example }
  end
end