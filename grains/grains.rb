class Grains
  CHESS_BOARD = (1..64)

  def self.square(location)
    new(location).count_grains_at_location
  end

  def self.total
    new(CHESS_BOARD.last).summarize_grains
  end

  def initialize(location)
    validate_location(location)

    @location = location
  end

  def count_grains_at_location
    (2 ** location) / 2
  end

  def summarize_grains
    (2 ** location) - 1
  end

  private

  attr_reader :location

  def validate_location(location)
    raise BoardLocationError unless CHESS_BOARD.cover?(location)
  end
end

class BoardLocationError < ArgumentError
  def message
    "Location given is not on the board"
  end
end