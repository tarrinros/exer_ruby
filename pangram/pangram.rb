class Pangram
  ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

  def self.pangram?(sentence)
    (ALPHABET - sentence.downcase.scan(/[[:alpha:]]/).uniq).empty?
  end
end