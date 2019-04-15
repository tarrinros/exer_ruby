class Acronym
  def self.abbreviate(args)
    args.scan(/\b[[:alpha:]]/).join.upcase
  end
end