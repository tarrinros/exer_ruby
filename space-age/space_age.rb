class SpaceAge
  EARTH_YEAR_IN_SECONDS = 31557600.to_f
  solar_years = {
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  ["mercury", "venus", "mars", "jupiter", "saturn", "uranus", "neptune"].each do |action|
    define_method("perform_#{action}") do |argument|
      "performing #{action.gsub('_', ' ')} on #{argument}"
    end
  end

  def initialize(seconds)
    @seconds = seconds
  end

  # def on_earth
  #   (@args / EARTH_YEAR_IN_SECONDS).round(2)
  # end
  #
  # def on_mercury
  #   (@args / MERCURY_YEAR_IN_SECONDS).round(2)
  # end
  #
  # def on_venus
  #   (@args / VENUS_YEAR_IN_SECONDS).round(2)
  # end
  #
  # def on_mars
  #   (@args / MARS_YEAR_IN_SECONDS).round(2)
  # end
  #
  # def on_jupiter
  #   (@args / JUPITER_YEAR_IN_SECONDS).round(2)
  # end
  #
  # def on_saturn
  #   (@args / SATURN_YEAR_IN_SECONDS).round(2)
  # end
  #
  # def on_uranus
  #   (@args / URANUS_YEAR_IN_SECONDS).round(2)
  # end
  #
  # def on_neptune
  #   (@args / NEPTUNE_YEAR_IN_SECONDS).round(2)
  # end
end