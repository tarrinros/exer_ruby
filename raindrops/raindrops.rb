class Raindrops
  FACTORS = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(number)
    result = (1..number).map { |i| FACTORS[i] if number % i == 0 }.join

    result.empty? ? number.to_s : result
  end
end