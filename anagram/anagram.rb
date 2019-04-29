class Anagram
  def initialize(string)
    @string = string
  end

  def match(arr)
    output_array = []

    unless valid?(arr)
      foo = string.downcase.chars.sort
      arr.each do |word|
        output_array.push(word) if word.downcase.chars.sort == foo
      end
    end

    output_array

  end


  private

  attr_reader :string

  def valid?(arr)
    arr.all? { |word| word.downcase == string.downcase }
  end
end