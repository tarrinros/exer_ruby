class Acronym
  def self.abbreviate(a)
    a.split(" ").map { |x| x.chr.upcase }
  end
end

print Acronym.abbreviate('Hello Word here')