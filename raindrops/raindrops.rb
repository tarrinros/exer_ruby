class Raindrops
  FACTORS = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(num)
    arr = (1..num).filter { |x| (num % x).zero? }

    str = arr.map { |x| FACTORS[x] }.compact.join

    str.empty? ? arr.last.to_s : str
  end
end