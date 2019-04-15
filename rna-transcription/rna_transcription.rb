class Complement
  DNA_RNA_PAIRS = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}.freeze

  def self.of_dna(args)
    args.scan(/[[:alpha:]]/).map { |i| DNA_RNA_PAIRS.fetch(i, '') }.join
  end
end