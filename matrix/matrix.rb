class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    @matrix.split("\n").map { |row| row.split(' ').map(&:to_i) }
  end

  def columns
    rows.transpose
  end
end