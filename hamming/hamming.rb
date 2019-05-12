class Hamming
  def self.compute(first_dna, second_dna)
    first_dna = first_dna.split("")
    second_dna = second_dna.split("")

    raise ArgumentError.new if first_dna.length != second_dna.length

    result = 0

    first_dna.each_index do |i|
      result += 1 unless first_dna[i].eql?(second_dna[i])
    end
    result
  end
end