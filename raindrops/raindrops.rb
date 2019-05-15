class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    RULES.each_with_object(results = '') do |(factor, sound)|
      results << sound if (number % factor).zero?
    end

    results.empty? ? number.to_s : results
  end
end