class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31557600.to_f
  MERCURY_YEAR_IN_SECONDS = 0.2408467 * EARTH_YEAR_IN_SECONDS
  VENUS_YEAR_IN_SECONDS = 0.61519726 * EARTH_YEAR_IN_SECONDS
  MARS_YEAR_IN_SECONDS = 1.8808158 * EARTH_YEAR_IN_SECONDS
  JUPITER_YEAR_IN_SECONDS = 11.862615 * EARTH_YEAR_IN_SECONDS
  SATURN_YEAR_IN_SECONDS = 29.447498 * EARTH_YEAR_IN_SECONDS
  URANUS_YEAR_IN_SECONDS = 84.016846 * EARTH_YEAR_IN_SECONDS
  NEPTUNE_YEAR_IN_SECONDS = 164.79132 * EARTH_YEAR_IN_SECONDS

  def initialize(args)
    @args = args
  end

  def on_earth
    (@args / EARTH_YEAR_IN_SECONDS).round(2)
  end

  def on_mercury
    (@args / MERCURY_YEAR_IN_SECONDS).round(2)
  end

  def on_venus
    (@args / VENUS_YEAR_IN_SECONDS).round(2)
  end

  def on_mars
    (@args / MARS_YEAR_IN_SECONDS).round(2)
  end

  def on_jupiter
    (@args / JUPITER_YEAR_IN_SECONDS).round(2)
  end

  def on_saturn
    (@args / SATURN_YEAR_IN_SECONDS).round(2)
  end

  def on_uranus
    (@args / URANUS_YEAR_IN_SECONDS).round(2)
  end

  def on_neptune
    (@args / NEPTUNE_YEAR_IN_SECONDS).round(2)
  end
end