class Acronym
  def self.abbreviate(arg)
    arg.scan(/\w+/).map { |x| x.chr.upcase }.join
  end
end