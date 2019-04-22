class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31557600.to_f
  PLANETS_YEARS = {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(seconds)
    @seconds = seconds
  end

  PLANETS_YEARS.each_pair do |planet_name, earth_years|
    define_method("on_#{planet_name}") do
      (@seconds / (earth_years * EARTH_YEAR_IN_SECONDS)).round(2)
    end
  end
end