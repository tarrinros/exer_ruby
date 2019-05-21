class Grains
  CHESS_BOARD = 64.freeze
  GRAIN = 1.freeze

  def self.square(location)
    self.validate_location(location)

    grains = GRAIN

    (location - GRAIN).times { grains *= 2 }

    grains
  end

  def self.total
    (2 ** CHESS_BOARD) - 1
  end

  def self.validate_location(location)
    raise BoardLocationError unless (1..CHESS_BOARD).cover?(location)
  end
end

class BoardLocationError < ArgumentError
  def message
    "Location given is not on the board"
  end
end