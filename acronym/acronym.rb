class Acronym
  def self.abbreviate(arg)
    arg.gsub(/[[:punct:]]/, ' ').split(" ").map { |x| x.chr.upcase }.join
  end
end