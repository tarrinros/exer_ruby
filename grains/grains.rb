class Grains
  def self.square(i)
    raise ArgumentError.new unless (1..64).cover?(i)

    self.count_grains(i).last
  end

  def self.total
    self.count_grains(64).sum
  end

  def self.count_grains(i)
    arr = [1]
    grain = 1

    1.upto(i - 1) do
      arr.push(grain *= 2)
    end
    arr
  end
end