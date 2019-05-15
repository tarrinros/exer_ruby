class Grains
  def self.square(i)
    grain = 1

    raise ArgumentError.new unless (1..64).cover?(i)

    1.upto(i - 1) do
      grain *= 2
    end
    grain
  end

  def self.total
    total = []
    total.push(self.square(64))
  end
end