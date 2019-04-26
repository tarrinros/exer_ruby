class Series
  def initialize(args)
    @args = args
  end

  def slices(i)
    arr = Array.new

    @args.split(//).each_cons(i) { |cons| arr.push(cons) }

    arr.map(&:flatten).map(&:join)
  end
end