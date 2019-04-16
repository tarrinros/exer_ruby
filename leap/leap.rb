class Year
  def self.leap?(args)
    return false unless args.modulo(4).zero?
    return true if args.modulo(4).zero? && !args.modulo(100).zero?
    return false if args.modulo(100).zero? && !args.modulo(400).zero?
    return true if args.modulo(400).zero?
    return false if args.modulo(200).zero? && !args.modulo(400).zero?
  end
end