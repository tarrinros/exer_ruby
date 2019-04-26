class Complement
  DNA_RNA_PAIRS = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}.freeze

  def self.of_dna(args)
    args.gsub(/[[:alpha:]]/) { |i| DNA_RNA_PAIRS[i] }
  end
end