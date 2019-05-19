class Isogram
  def self.isogram?(words)
    letters = words.downcase.scan(/[[:alpha:]]/)

    letters.uniq.size == letters.size
  end
end