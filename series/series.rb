class Series
  attr_reader :args

  def initialize(args)
    @args = args
  end

  def slices(amount)
    raise ArgumentError.new unless self.args.length >= amount

    slice_consecutive(amount)
  end

  private

  def slice_consecutive(amount)
    self.args.chars.each_cons(amount).map(&:join)
  end
end