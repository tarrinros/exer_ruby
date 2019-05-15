class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    result = RULES.map { |key, value| value if number % key == 0 }.join

    result.empty? ? number.to_s : result
  end
end