class Isogram
  def self.isogram?(string)
    chars = string.downcase.scan(/[[:alpha:]]/)

    chars.uniq.size == chars.size
  end
end