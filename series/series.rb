class Series
  def initialize(args)
    @args = args
  end

  def slices(i)
    b = Array.new

    @args.split(//).each_cons(i) { |arr| b << arr }

    b.map(&:flatten).map(&:join)
  end
end