class Acronym
  def self.abbreviate(arg)
    arg.scan(/\b[[:alpha:]]/).join.upcase
  end
end