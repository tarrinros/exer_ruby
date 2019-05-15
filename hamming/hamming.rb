class Hamming
  def self.compute(first_dna, second_dna)

    raise ArgumentError if first_dna.length != second_dna.length

    first_dna.chars.each_index.count { |i| first_dna[i] != second_dna.chars[i] }
  end
end