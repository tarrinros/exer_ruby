class Grains
  CHESS_BOARD = (1..64)

  def self.square(location)
    self.validate_location(location)

    (2 ** location) / 2
  end

  def self.total
    (2 ** CHESS_BOARD.last) - 1
  end

  def self.validate_location(location)
    raise BoardLocationError unless CHESS_BOARD.cover?(location)
  end
end

class BoardLocationError < ArgumentError
  def message
    "Location given is not on the board"
  end
end