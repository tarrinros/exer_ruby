class Grains
  CHESS_BOARD = 64
  GRAIN = 1

  def self.square(location)
    begin
      self.validate_location(location)
    rescue BoardLocationError => e
      e.message # => "a message"
    end

    grains = GRAIN

    (location - GRAIN).times { grains *= 2 }

    grains
  end

  def self.total
    (2 ** CHESS_BOARD) - 1
  end

  def self.validate_location(location)
    unless (1..CHESS_BOARD).cover?(location)
      raise BoardLocationError, "Location given is not on the board"
    end
  end
end

class BoardLocationError < ArgumentError; end

puts Grains.square(65)