class Series
  def initialize(args)
    @args = args
  end

  def slices(amount)
    raise ArgumentError.new if @args.length < amount

    @args.split(//).each_cons(amount).map(&:join)
  end
end