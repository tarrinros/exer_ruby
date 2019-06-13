class Matrix
  def initialize(string)
    @matrix = string.lines(chomp: true).map { |row| row.split.map(&:to_i) }
  end

  def rows
    matrix
  end

  def columns
    matrix.transpose
  end

  def saddle_points

  end

  private

  attr_reader :matrix
end